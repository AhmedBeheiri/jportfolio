import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import '../client.dart' as app_client;
import 'package:backend_client/backend_client.dart';

class WorkSection extends StatefulComponent {
  const WorkSection({super.key});

  @override
  State<WorkSection> createState() => _WorkSectionState();
}

class _WorkSectionState extends State<WorkSection> {
  List<WorkExperience> _workItems = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    if (app_client.kIsWeb) {
      _isLoading = true;
      app_client.client.content.getWorkExperience().then((data) {
        setState(() {
          _workItems = data;
          _isLoading = false;
        });
      }).catchError((e) {
        print('Error fetching work experience: $e');
        setState(() {
          _workItems = [];
          _isLoading = false;
        });
      });
    } else {
      _workItems = [];
      _isLoading = false;
    }
  }

  @override
  Component build(BuildContext context) {
    return section(
      id: 'work',
      classes: 'py-20 bg-gray-50 dark:bg-[#0d1117]',
      [
        div(classes: 'mx-auto max-w-7xl px-4 sm:px-6 lg:px-8', [
          div(classes: 'flex flex-col md:flex-row md:items-end justify-between mb-16 gap-6', [
            div([
              span(classes: 'font-bold text-primary tracking-wider uppercase text-sm', [Component.text('Process & Journey')]),
              h2(classes: 'mt-2 text-3xl font-black tracking-tight text-gray-900 dark:text-white sm:text-4xl', [Component.text('Work Experience')]),
              p(classes: 'mt-4 text-lg text-gray-600 dark:text-gray-400 max-w-2xl', [
                Component.text("My professional journey working with innovative companies to build world-class digital products."),
              ]),
            ]),
             Link(to: '/projects', classes: 'hidden md:flex items-center gap-2 px-5 py-2.5 rounded-full bg-white dark:bg-card-dark border border-gray-200 dark:border-gray-700 font-bold text-sm text-gray-700 dark:text-gray-300 hover:border-primary hover:text-primary dark:hover:text-primary transition-all shadow-sm', child: div(classes: 'flex items-center gap-2', [
              Component.text('View Personal Projects'),
              span(classes: 'material-symbols-outlined text-[18px]', [Component.text('arrow_forward')]),
            ])),
          ]),
          
          if (_isLoading)
            div(classes: 'text-gray-500', [Component.text('Loading...')])
          else
            div(classes: 'grid gap-6 md:grid-cols-2 lg:grid-cols-3', [ 
               for (var company in _workItems)
                 article(classes: 'group relative flex flex-col gap-6 p-6 rounded-2xl bg-white dark:bg-card-dark shadow-sm border border-gray-100 dark:border-gray-800 transition-all hover:shadow-lg hover:border-primary/20 hover:-translate-y-1', [
                    div(classes: 'flex items-start justify-between', [
                       div(classes: 'h-14 w-14 shrink-0 rounded-xl bg-gray-50 dark:bg-gray-800 p-2 flex items-center justify-center border border-gray-100 dark:border-gray-700', [
                         img(src: company.imageUrl, alt: company.companyName, classes: 'h-full w-full object-contain rounded-lg'),
                       ]),
                       span(classes: 'inline-flex items-center rounded-full bg-primary/10 px-2.5 py-1 text-xs font-semibold text-primary', [
                         // Format date range
                         Component.text('${company.start.year} - ${company.end?.year ?? "Present"}')
                       ]),
                    ]),
                    
                    div(classes: 'flex-1', [
                       h3(classes: 'text-xl font-bold text-gray-900 dark:text-white mb-1', [Component.text(company.role)]),
                       p(classes: 'text-sm font-semibold text-gray-500 dark:text-gray-400 mb-4', [Component.text(company.companyName)]),
                       p(classes: 'text-gray-600 dark:text-gray-400 text-sm leading-relaxed mb-6 line-clamp-4', [Component.text(company.description)]),
                       
                       div(classes: 'flex flex-wrap gap-2 mt-auto', [
                         for (var skill in company.skills)
                           span(classes: 'inline-flex items-center rounded-md bg-gray-50 dark:bg-gray-800/50 px-2 py-1 text-xs font-medium text-gray-600 dark:text-gray-400 ring-1 ring-inset ring-gray-500/10', [Component.text(skill)]),
                       ]),
                    ]),
                 ]),
            ]),
          
          div(classes: 'mt-10 flex justify-center md:hidden', [
             Link(to: '/projects', classes: 'flex items-center gap-2 px-5 py-2.5 rounded-full bg-white dark:bg-card-dark border border-gray-200 dark:border-gray-700 font-bold text-sm text-gray-700 dark:text-gray-300 hover:border-primary hover:text-primary dark:hover:text-primary transition-all shadow-sm', child: div(classes: 'flex items-center gap-2', [
              Component.text('View Personal Projects'),
              span(classes: 'material-symbols-outlined text-[18px]', [Component.text('arrow_forward')]),
            ])),
          ]),
        ]),
      ],
    );
  }
}
