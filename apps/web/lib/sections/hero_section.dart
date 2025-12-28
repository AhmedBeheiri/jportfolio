import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';


import 'package:jaspr_router/jaspr_router.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      classes: 'relative overflow-hidden pt-12 pb-20 lg:pt-24 lg:pb-32',
      [
        // Decorative background elements
        div(classes: 'absolute top-0 right-0 -mr-20 -mt-20 h-[500px] w-[500px] rounded-full bg-primary/10 blur-[100px] dark:bg-primary/20 pointer-events-none', []),
        div(classes: 'absolute bottom-0 left-0 -ml-20 -mb-20 h-[400px] w-[400px] rounded-full bg-purple-500/10 blur-[100px] dark:bg-purple-500/20 pointer-events-none', []),
        
        div(classes: 'mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 relative z-10', [
          div(classes: 'grid gap-12 lg:grid-cols-2 lg:gap-8 items-center', [
            // Left Content
            div(classes: 'flex flex-col gap-6 text-left', [
              // Badge
              div(classes: 'inline-flex w-fit items-center gap-2 rounded-full border border-gray-200 bg-white px-3 py-1 text-xs font-semibold uppercase tracking-wide text-primary shadow-sm dark:border-gray-700 dark:bg-card-dark dark:text-blue-400', [
                span(classes: 'relative flex h-2 w-2', [
                  span(classes: 'animate-ping absolute inline-flex h-full w-full rounded-full bg-blue-400 opacity-75', []),
                  span(classes: 'relative inline-flex rounded-full h-2 w-2 bg-blue-500', []),
                ]),
                Component.text('Available for new projects'),
              ]),
              
              // Headline
              h1(classes: 'text-4xl font-black leading-tight tracking-tight text-gray-900 dark:text-white sm:text-5xl lg:text-6xl', [
                Component.text('Crafting High-Performance '),
                span(classes: 'text-transparent bg-clip-text bg-gradient-to-r from-primary to-purple-500', [Component.text('Mobile Apps')]),
              ]),
              
              // Subtitle
              p(classes: 'text-lg text-gray-600 dark:text-gray-300 sm:text-xl max-w-xl', [
                Component.text('Senior Mobile Engineer specialized in Flutter, Android, and iOS development. I build seamless, pixel-perfect experiences that live in your pocket.'),
              ]),
              
              // Actions
              div(classes: 'flex flex-wrap gap-4 pt-4', [
                a(
                  href: '#work',
                  classes: 'h-12 px-6 rounded-lg bg-primary text-white font-bold hover:bg-blue-700 transition-colors shadow-lg shadow-blue-500/30 flex items-center gap-2',
                  [
                    Component.text('See My Work'),
                    span(classes: 'material-symbols-outlined text-[18px]', [Component.text('arrow_downward')]),
                  ],
                ),
                Link(to: '/contact', classes: 'h-12 px-6 rounded-lg bg-gray-200 dark:bg-gray-800 text-gray-900 dark:text-white font-bold hover:bg-gray-300 dark:hover:bg-gray-700 transition-colors flex items-center gap-2', child: div(classes: 'flex items-center gap-2', [
                  Component.text('Contact Me'),
                  span(classes: 'material-symbols-outlined text-[18px]', [Component.text('mail')]),
                ])),
              ]),
            ]),
            
            // Right Content (Image)
            div(classes: 'relative w-full aspect-square lg:aspect-auto lg:h-[600px] flex items-center justify-center', [
               div(classes: 'relative w-full h-full rounded-2xl bg-gradient-to-br from-gray-100 to-gray-200 dark:from-gray-800 dark:to-[#0d1017] border border-gray-200 dark:border-gray-700 shadow-2xl overflow-hidden flex items-center justify-center group', [
                  // Placeholder for the complex 3D composition in the HTML
                  // Using a simplified placeholder structure for now to avoid too much nesting complexity in one go
                  div(classes: 'absolute inset-0 bg-cover bg-center opacity-40 dark:opacity-20 mix-blend-overlay', attributes: {'style': "background-image: url('https://images.unsplash.com/photo-1616469829941-c7200edec809?q=80&w=2070&auto=format&fit=crop')"}, []),
                  
                  // Mobile Mockup Placeholder
                   div(classes: 'relative w-[280px] h-[580px] bg-black rounded-[40px] border-[8px] border-gray-900 shadow-2xl transform rotate-[-6deg] transition-transform duration-500 group-hover:rotate-0 z-10 overflow-hidden', [
                      div(classes: 'w-full h-full bg-gray-800 flex flex-col relative', [
                         div(classes: 'absolute top-0 left-1/2 transform -translate-x-1/2 w-32 h-6 bg-black rounded-b-2xl z-20', []),
                         div(classes: 'w-full h-full bg-cover bg-center', attributes: {'style': "background-image: url('https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')"}, []),
                      ]),
                   ]),
               ]),
            ]),
          ]),
        ]),
      ],
    );
  }
}
