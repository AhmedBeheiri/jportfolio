import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/layout/page_layout.dart';
import 'pages/contact.dart';
import 'pages/home.dart';
import 'pages/projects.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'bg-background-light dark:bg-background-dark font-display text-gray-900 dark:text-white antialiased overflow-x-hidden min-h-screen', [
        // Fonts & Tailwind
        link(href: 'https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700;900&display=swap', rel: 'stylesheet'),
        link(href: 'https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap', rel: 'stylesheet'),
        
        RawText('<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.1.0/css/all.min.css" integrity="sha512-10/jx0LczTgmPSyS5W8VTWXBkpN88K/4uR6EIkXvRdx8AOGAK0CFLrz2b9RcMC3q9T1YQHT8g5KPqSKlC8P4rA==" crossorigin="anonymous" referrerpolicy="no-referrer" />'),
        
        script(src: 'https://cdn.tailwindcss.com?plugins=forms,container-queries'),
        
        RawText('''
          <script>
            // Force dark mode to match design
            document.documentElement.classList.add('dark');
            
            tailwind.config = {
                darkMode: "class",
                theme: {
                    extend: {
                        colors: {
                            "primary": "#135bec",
                            "primary-hover": "#1d6bf5",
                            "background-light": "#f6f6f8",
                            "background-dark": "#101622",
                            "card-dark": "#1a212e",
                            "surface-dark": "#1c2333",
                            "border-dark": "#2d3748",
                            "text-secondary": "#9da6b9",
                        },
                        fontFamily: {
                            "display": ["Inter", "sans-serif"]
                        },
                        borderRadius: { "DEFAULT": "0.25rem", "lg": "0.5rem", "xl": "0.75rem", "2xl": "1rem", "full": "9999px" },
                    },
                },
            }
          </script>
        '''),

        Router(routes: [
          ShellRoute(
            builder: (context, state, child) => PageLayout(children: [child]),
            routes: [
               Route(path: '/', title: 'Home', builder: (context, state) => const Home()),
               Route(path: '/projects', title: 'Projects Showcase', builder: (context, state) => const Projects()),
               Route(path: '/contact', title: 'Contact Me', builder: (context, state) => const Contact()),
            ],
          ),
        ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css.import('styles.css'),
  ];
}
