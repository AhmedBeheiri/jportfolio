import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';


import 'package:jaspr_router/jaspr_router.dart';

class CTASection extends StatelessComponent {
  const CTASection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      classes: 'py-16',
      [
        div(classes: 'mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 text-center', [
          h2(classes: 'text-3xl font-bold tracking-tight text-gray-900 dark:text-white sm:text-4xl mb-6', [
             Component.text('Ready to build something amazing?'),
          ]),
          p(classes: 'mx-auto max-w-2xl text-lg text-gray-600 dark:text-gray-400 mb-10', [
             Component.text("Whether you have a fully fleshed-out idea or just a rough sketch, let's talk about how we can turn it into a high-performance mobile app."),
          ]),
          Link(to: '/contact', classes: 'inline-flex items-center justify-center rounded-lg bg-primary h-14 px-8 text-base font-bold text-white transition-all hover:bg-blue-700 hover:-translate-y-1 shadow-lg shadow-blue-500/30', child: 
             Component.text("Let's Connect"),
          ),
        ]),
      ],
    );
  }
}
