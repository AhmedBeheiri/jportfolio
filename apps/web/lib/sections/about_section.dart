import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../client.dart' as app_client;
import 'package:backend_client/backend_client.dart';

class AboutSection extends StatefulComponent {
  const AboutSection({super.key});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  About? _about;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    if (app_client.kIsWeb) {
      _isLoading = true;
      app_client.client.content.getAbout().then((data) {
        setState(() {
          _about = data;
          _isLoading = false;
        });
      }).catchError((e) {
        print('Error fetching about data: $e');
        setState(() {
           _about = About(
            title: 'Error loading profile',
            description: 'Unable to load profile data due to a connection error.',
            location: 'Unknown',
            education: 'Unknown',
            imageUrl: 'https://placehold.co/400x400/ff0000/white?text=Error',
            resumeUrl: '',
            email:'ahmedbeheirii@gmail.com'
          );
          _isLoading = false;
        });
      });
    } else {
      _about = About(
        title: 'Loading...',
        description: 'Loading profile...',
        location: '',
        education: '',
        imageUrl: 'https://placehold.co/400x400/cc0000/white?text=Loading',
        resumeUrl: '',
        email:''
      );
      _isLoading = false;
    }
  }

  @override
  Component build(BuildContext context) {
    if (_isLoading) {
       return section(classes: 'py-20', [div(classes: 'text-center', [Component.text('Loading...')])]);
    }

    final about = _about!;

    var contentChildren = <Component>[
       h2(classes: 'text-2xl font-bold text-gray-900 dark:text-white mb-4', [Component.text(about.title)]),
       p(classes: 'text-gray-600 dark:text-gray-300 mb-6 leading-relaxed', [
          Component.text(about.description)]),
       
       div(classes: 'flex flex-wrap justify-center md:justify-start gap-3', [
          div(classes: 'flex items-center gap-2 px-3 py-1.5 rounded-full bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 text-sm font-medium', [
             span(classes: 'material-symbols-outlined text-[16px]', [Component.text('location_on')]),
             Component.text(about.location),
          ]),
          div(classes: 'flex items-center gap-2 px-3 py-1.5 rounded-full bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 text-sm font-medium', [
             span(classes: 'material-symbols-outlined text-[16px]', [Component.text('school')]),
             Component.text(about.education),
          ]),
       ]),
    ];

    // if (about.resumeUrl.isNotEmpty) {
    //   contentChildren.add(
    //      div(classes: 'mt-8', [
    //        a(
    //          href: about.resumeUrl,
    //          // Minimal button
    //          [Component.text('Download Resume')]
    //        ),
    //      ])
    //   );
    // }

    return section(
      id: 'about',
      classes: 'py-20 relative overflow-hidden',
      [
        div(classes: 'mx-auto max-w-4xl px-4 sm:px-6 lg:px-8 relative z-10', [
           div(classes: 'bg-white dark:bg-card-dark rounded-3xl p-8 md:p-12 shadow-2xl border border-gray-100 dark:border-gray-800 flex flex-col md:flex-row gap-10 ', [
             // Image Placeholder
             div(classes: 'shrink-0 relative', [
                div(classes: 'w-32 h-32 md:w-40 md:h-40 rounded-full overflow-hidden border-4 border-white dark:border-gray-700 shadow-lg relative z-10', [
                   img(src: about.imageUrl, alt: 'Developer Portrait', classes: 'w-full h-full object-cover', width: 400, height: 400), 
                ]),
             ]),
             
             // Content
              div(classes: 'text-center md:text-left', contentChildren),
           ]),
        ]),
      ],
    );
  }
}
