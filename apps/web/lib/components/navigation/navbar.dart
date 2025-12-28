import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import '../../client.dart' as app_client;

@client
class Navbar extends StatefulComponent {
  const Navbar();

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  String _resumeUrl = '';

  @override
  void initState() {
    super.initState();
    if (app_client.kIsWeb) {
      app_client.client.content.getAbout().then((data) {
        if (data != null) {
          print('Navbar: Resume URL loaded: ${data.resumeUrl}');
          setState(() => _resumeUrl = data.resumeUrl);
        }
      }).catchError((e) {
        print('Navbar: Error fetching resume URL: $e');
      });
    }
  }

  @override
  Component build(BuildContext context) {
    return header(
      classes: 'sticky top-0 z-50 w-full border-b border-[#e5e7eb] dark:border-[#282e39] bg-white/80 dark:bg-[#111318]/90 backdrop-blur-md',
      [
        div(classes: 'mx-auto flex h-16 max-w-7xl items-center justify-between px-4 sm:px-6 lg:px-8', [
          // Logo Section
          div(classes: 'flex items-center gap-2', [
            div(classes: 'flex h-8 w-8 items-center justify-center rounded-lg bg-primary text-white', [
              span(classes: 'material-symbols-outlined text-[20px]', [Component.text('terminal')]),
            ]),
            h2(classes: 'text-lg font-bold tracking-tight text-gray-900 dark:text-white', [Component.text('DevPortfolio')]),
          ]),

          // Navigation Links (Desktop)
          nav(classes: 'hidden md:flex items-center gap-8', [
            a(href: '#', classes: 'text-sm font-medium text-gray-600 hover:text-primary dark:text-gray-300 dark:hover:text-white transition-colors', [Component.text('Home')]),
            a(href: '#work', classes: 'text-sm font-medium text-gray-600 hover:text-primary dark:text-gray-300 dark:hover:text-white transition-colors', [Component.text('Work')]),
            a(href: '#stack', classes: 'text-sm font-medium text-gray-600 hover:text-primary dark:text-gray-300 dark:hover:text-white transition-colors', [Component.text('Tech Stack')]),
            a(href: '#about', classes: 'text-sm font-medium text-gray-600 hover:text-primary dark:text-gray-300 dark:hover:text-white transition-colors', [Component.text('About')]),
            Link(to: '/contact', classes: 'text-sm font-bold text-primary', child: Component.text('Contact')),
          ]),

          // Actions
          div(classes: 'flex items-center gap-4', [
            a(
              href: _resumeUrl.isNotEmpty ? _resumeUrl : '#',
              target: _resumeUrl.isNotEmpty ? Target.blank : null,
              classes: 'hidden sm:flex h-9 items-center justify-center rounded-lg bg-primary px-4 text-sm font-bold text-white transition-all hover:bg-blue-700 active:scale-95 no-underline',
              [
                span(classes: 'mr-2 material-symbols-outlined text-[18px]', [Component.text('download')]),
                Component.text('Resume'),
              ],
            ),
            button(classes: 'md:hidden p-2 text-gray-600 dark:text-gray-300', [
              span(classes: 'material-symbols-outlined', [Component.text('menu')]),
            ]),
          ]),
        ]),
      ],
    );
  }
}
