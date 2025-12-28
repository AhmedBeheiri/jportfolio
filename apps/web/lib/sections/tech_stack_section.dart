import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../client.dart' as app_client;
import 'package:backend_client/backend_client.dart';

class TechStackSection extends StatefulComponent {
  const TechStackSection({super.key});

  @override
  State<TechStackSection> createState() => _TechStackSectionState();
}

class _TechStackSectionState extends State<TechStackSection> {
  List<TechStack> _techItems = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    if (app_client.kIsWeb) {
      _isLoading = true;
      app_client.client.content.getTechStack().then((data) {
        setState(() {
          _techItems = data;
          _isLoading = false;
        });
      }).catchError((e) {
        print('Error fetching tech stack: $e');
        setState(() {
          _techItems = [];
          _isLoading = false;
        });
      });
    } else {
      _techItems = [];
      _isLoading = false;
    }
  }

  @override
  Component build(BuildContext context) {
    return section(
      id: 'stack',
      classes: 'py-12 bg-white dark:bg-[#111318]',
      [
        div(classes: 'mx-auto max-w-7xl px-4 sm:px-6 lg:px-8', [
          div(classes: 'flex flex-col items-center mb-10', [
            h2(classes: 'text-2xl font-bold tracking-tight text-gray-900 dark:text-white mb-2', [Component.text('My Tech Stack')]),
            p(classes: 'text-gray-500 dark:text-gray-400 text-center text-sm', [Component.text('Tools and technologies I use to bring ideas to life')]),
          ]),
          
          if (_isLoading)
            div(classes: 'text-gray-500', [Component.text('Loading...')])
          else
            div(classes: 'grid grid-cols-2 sm:grid-cols-3 md:grid-cols-6 gap-6', [
              for (var item in _techItems)
                div(classes: 'group flex flex-col items-center gap-4 p-4 rounded-xl bg-gray-50 dark:bg-card-dark border border-gray-100 dark:border-gray-800 transition-all hover:border-primary/50 hover:shadow-lg hover:shadow-primary/10', [
                  div(classes: 'h-12 w-12 flex items-center justify-center rounded-lg bg-blue-50 dark:bg-blue-900/20 text-blue-500', [
                      // Display icon as HTML (supports SVG, emoji, or any markup)
                      RawText(item.icon),
                  ]),
                  div(classes: 'text-center', [
                    h3(classes: 'font-bold text-gray-900 dark:text-white', [Component.text(item.name)]),
                    p(classes: 'text-xs text-gray-500 dark:text-gray-400', [Component.text(item.description)]),
                  ]),
                ]),
            ]),
        ]),
      ],
    );
  }
}
