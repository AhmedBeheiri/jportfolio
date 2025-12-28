import os
import glob
import re

# Path to templates
templates_dir = '/Volumes/ahmed_drive/Projects/jportfolio/packages/backend/web/templates'
files = glob.glob(os.path.join(templates_dir, '*.html'))

for file_path in files:
    with open(file_path, 'r') as f:
        content = f.read()

    # 1. Clean up potential corruption from previous run
    # Remove the broken input line
    content = re.sub(r'<input type=\"hidden\" id=\"globalApiUrl\" value=document.*? />', '', content)
    # Remove any correct input line if present (to re-add later safely)
    content = re.sub(r'<input type=\"hidden\" id=\"globalApiUrl\" value=\"\{\{apiUrl\}\}\" />', '', content)

    # 2. Normalize triple mustache to double
    content = content.replace('{{{apiUrl}}}', '{{apiUrl}}')
    
    # 3. Remove debug logs containing the tag (since we are replacing the logic)
    content = re.sub(r'console\.log\(.*\{\{apiUrl\}\}.*\);', '', content)

    # 4. Perform JS Replacements
    # We want to find strings that *start* with {{apiUrl}}.
    # Regex: (['"]) - Group 1 (Quote)
    #        \{\{apiUrl\}\} - Literal tag
    #        (.*?) - Group 2 (Rest of path)
    #        \1 - Match Group 1 (Closing quote)
    
    def replace_js_url(match):
        quote = match.group(1)
        rest = match.group(2)
        
        # New JS: document.getElementById('globalApiUrl').value + "/path"
        if not rest:
             return "document.getElementById('globalApiUrl').value"
        
        return f"document.getElementById('globalApiUrl').value + {quote}{rest}{quote}"

    content = re.sub(r"(['\"])\{\{apiUrl\}\}(.*?)(\1)", replace_js_url, content)
    
    # 5. Handle backticks `{{apiUrl}}...`
    content = re.sub(r"`\{\{apiUrl\}\}(.*?)`", lambda m: f"`${{document.getElementById('globalApiUrl').value}}{m.group(1)}`", content)

    # 6. Inject the hidden input at the start of body
    # We use a standard regex to find <body>
    if 'id="globalApiUrl"' not in content:
        input_tag = '\n    <input type="hidden" id="globalApiUrl" value="{{apiUrl}}" />'
        content = re.sub(r'(<body[^>]*>)', f'\\1{input_tag}', content, count=1)

    with open(file_path, 'w') as f:
        f.write(content)
        
    print(f"Fixed {os.path.basename(file_path)}")
