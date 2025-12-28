import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';


import 'package:jaspr_router/jaspr_router.dart';

import '../client.dart' as app_client;
import 'package:backend_client/backend_client.dart';

@client
class Projects extends StatefulComponent {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  String _currentFilter = 'All Projects';
  List<Project> _projects = [];
  bool _isLoading = true;
  About? _about;
  List<SocialLink> _socialLinks = [];

  @override
  void initState() {
    super.initState();
    _fetchAbout();
    _fetchProjects();
  }

  void _fetchAbout() {
    if (app_client.kIsWeb) {
      app_client.client.content.getAbout().then((data) {
        setState(() {
          _about = data;
        });
      }).catchError((e) {
        print('Error fetching about: $e');
      });
      
      app_client.client.content.getSocialLinks().then((links) {
        setState(() {
          _socialLinks = links;
        });
      }).catchError((e) {
        print('Error fetching social links: $e');
      });
    }
  }

  void _fetchProjects() {
    if (app_client.kIsWeb) {
      setState(() {
         _isLoading = true;
      });
      app_client.client.content.getProjects(filter: _currentFilter == 'All Projects' ? null : _currentFilter).then((data) {
        setState(() {
          _projects = data;
          _isLoading = false;
        });
      }).catchError((e) {
        print('Error fetching projects: $e');
        setState(() {
          _projects = [];
          _isLoading = false;
        });
      });
    } else {
      _projects = [];
      _isLoading = false; // SSR default
    }
  }

  void _onFilterChanged(String filter) {
    setState(() {
      _currentFilter = filter;
      _fetchProjects();
    });
  }

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'w-full max-w-7xl mx-auto px-4 md:px-10 py-8 flex flex-col gap-10',
      [
        // Hero Section
        section(classes: '@container', [
          div(
            classes:
                'flex flex-col gap-8 rounded-2xl bg-white dark:bg-[#1c1f27] p-6 shadow-sm ring-1 ring-slate-900/5 dark:ring-white/10 md:p-10 lg:flex-row lg:items-center',
            [
              div(classes: 'flex flex-1 flex-col justify-center gap-6', [
                div(classes: 'flex flex-col gap-3', [
                  div(
                    classes:
                        'inline-flex w-fit items-center gap-2 rounded-full border border-primary/20 bg-primary/10 px-3 py-1 text-xs font-semibold text-primary',
                    [
                      span(classes: 'material-symbols-outlined text-[16px]', [Component.text('verified')]),
                      span([Component.text('Open for Opportunities')]),
                    ],
                  ),
                  h1(
                    classes:
                        'text-4xl font-black leading-tight tracking-tight md:text-5xl lg:text-6xl text-slate-900 dark:text-white',
                    [
                      Component.text('Projects Showcase'),
                    ],
                  ),
                  p(classes: 'max-w-xl text-lg text-slate-600 dark:text-slate-400', [
                    Component.text(
                      'Explore my journey through mobile development, featuring robust applications built with Flutter, Native Android (Kotlin), and iOS (Swift).',
                    ),
                  ]),
                ]),
                div(classes: 'flex flex-wrap gap-4', [
                  a(
                    href: _socialLinks.firstWhere((l) => l.platform == 'GitHub', orElse: () => SocialLink(id: 0, platform: '', url: '#', icon: '')).url,
                    target: Target.blank,
                    classes:
                        'flex h-12 items-center gap-2 rounded-lg bg-primary px-6 text-base font-bold text-white shadow-lg shadow-primary/25 transition-transform hover:scale-105',
                    [
                      span(classes: 'material-symbols-outlined', [Component.text('code')]),
                      Component.text('View GitHub'),
                    ],
                  ),
                  a(
                    href: _about?.resumeUrl ?? '#',
                    target: Target.blank,
                    classes:
                        'flex h-12 items-center gap-2 rounded-lg border border-slate-200 dark:border-slate-700 bg-transparent px-6 text-base font-bold text-slate-900 dark:text-white transition-colors hover:bg-slate-100 dark:hover:bg-slate-800',
                    [
                      Component.text('Download Resume'),
                    ],
                  ),
                ]),
              ]),
              div(
                classes:
                    'relative aspect-video w-full flex-1 overflow-hidden rounded-xl bg-slate-800 lg:h-auto lg:min-h-[300px]',
                attributes: {'data-alt': 'Abstract gradient mesh representing code structure and connectivity'},
                [
                  div(
                    classes:
                        'absolute inset-0 bg-gradient-to-br from-primary via-[#6366f1] to-[#8b5cf6] opacity-80 mix-blend-multiply',
                    [],
                  ),
                  div(
                    classes:
                        'absolute inset-0 bg-[url("https://images.unsplash.com/photo-1555099962-4199c345e5dd?q=80&w=1000&auto=format&fit=crop")] bg-cover bg-center opacity-40 mix-blend-overlay',
                    [],
                  ),
                  div(
                    classes: 'absolute -bottom-10 -right-10 h-64 w-64 rounded-full bg-primary blur-3xl opacity-40',
                    [],
                  ),
                ],
              ),
            ],
          ),
        ]),

        // Filter Chips
        section(
          classes:
              'sticky top-[73px] z-40 -mx-4 px-4 py-4 backdrop-blur-xl bg-background-light/90 dark:bg-background-dark/90 border-b border-transparent md:static md:bg-transparent md:border-none md:p-0 md:backdrop-blur-none',
          [
            div(classes: 'flex flex-wrap items-center gap-3', [
              span(classes: 'mr-2 text-sm font-semibold text-slate-500 dark:text-slate-400 hidden sm:block', [
                Component.text('Filter by:'),
              ]),
              button(
                onClick: () => _onFilterChanged('All Projects'),
                classes:
                    'group flex h-9 items-center gap-2 rounded-full px-4 text-sm font-medium transition-all ${_currentFilter == 'All Projects' ? 'bg-primary text-white shadow-md shadow-primary/20 hover:bg-primary/90' : 'border border-slate-200 dark:border-slate-700 bg-white dark:bg-[#1c1f27] text-slate-600 dark:text-slate-300 hover:border-primary/50 hover:text-primary dark:hover:text-primary'}',
                [
                  span([Component.text('All Projects')]),
                  // Count badge could be dynamic if we fetched count
                ],
              ),
              for (var filter in ['Flutter', 'Android', 'iOS', 'Backend'])
                button(
                  onClick: () => _onFilterChanged(filter),
                  classes:
                      'group flex h-9 items-center gap-2 rounded-full border border-slate-200 dark:border-slate-700 bg-white dark:bg-[#1c1f27] px-4 text-sm font-medium transition-all hover:border-primary/50 hover:text-primary dark:hover:text-primary ${_currentFilter == filter 
                          ? '!bg-primary !text-white !border-primary' // Active state override
                          : 'text-slate-600 dark:text-slate-300'}',
                  [
                    if (filter == 'Flutter')
                      span(classes: 'material-symbols-outlined text-[18px]', [Component.text('flutter_dash')])
                    else if (filter == 'Android')
                      span(classes: 'material-symbols-outlined text-[18px]', [Component.text('android')])
                    else if (filter == 'iOS')
                      span(classes: 'material-symbols-outlined text-[18px]', [Component.text('phone_iphone')])
                    else if (filter == 'Backend')
                      span(classes: 'material-symbols-outlined text-[18px]', [Component.text('database')]),
                    span([Component.text(filter)]),
                  ],
                ),
            ]),
          ],
        ),

        // Projects Grid
        if (_isLoading)
          div(classes: 'text-center py-10', [Component.text('Loading projects...')])
        else if (_projects.isEmpty)
           div(classes: 'text-center py-10 text-gray-500', [Component.text('No projects found.')])
        else
          section(classes: 'grid grid-cols-1 gap-6 md:grid-cols-2 xl:grid-cols-3', [
            for (var project in _projects)
              _buildProjectCard(project),
          ]),

        // CTA Section
        section(
          classes:
              'mt-8 rounded-2xl bg-gradient-to-r from-[#0f172a] to-[#1e293b] p-8 md:p-12 text-center relative overflow-hidden',
          [
            div(classes: 'absolute top-0 right-0 -mr-16 -mt-16 w-64 h-64 bg-primary/20 rounded-full blur-3xl', []),
            div(classes: 'absolute bottom-0 left-0 -ml-16 -mb-16 w-64 h-64 bg-primary/20 rounded-full blur-3xl', []),
            div(classes: 'relative z-10 flex flex-col items-center gap-6', [
              h2(classes: 'text-3xl font-bold text-white md:text-4xl', [Component.text('Have a project in mind?')]),
              p(classes: 'max-w-xl text-lg text-slate-300', [
                Component.text(
                  "I'm currently available for freelance projects and open to full-time opportunities. Let's build something amazing together.",
                ),
              ]),
              div(classes: 'flex flex-col sm:flex-row gap-4 mt-2', [
                Link(
                  to: '/contact',
                  classes:
                      'flex items-center justify-center gap-2 rounded-lg bg-primary px-8 py-3 text-base font-bold text-white shadow-lg shadow-primary/25 transition-transform hover:scale-105',
                  child: div(classes: 'flex items-center gap-2', [
                    span(classes: 'material-symbols-outlined', [Component.text('mail')]),
                    Component.text('Contact Me'),
                  ]),
                ),
                Link(
                  to: '/contact',
                  classes:
                      'flex items-center justify-center gap-2 rounded-lg border border-slate-600 bg-transparent px-8 py-3 text-base font-bold text-white hover:bg-slate-800 transition-colors',
                  child: div(classes: 'flex items-center gap-2', [
                    span(classes: 'material-symbols-outlined', [Component.text('calendar_month')]),
                    Component.text('Schedule Call'),
                  ]),
                ),
              ]),
            ]),
          ],
        ),
      ],
    );
  }

  Component _buildProjectCard(Project project) {
    return article(
      classes:
          'group relative flex flex-col overflow-hidden rounded-2xl border border-slate-200 dark:border-[#282e39] bg-white dark:bg-[#1c1f27] shadow-sm transition-all hover:-translate-y-1 hover:shadow-lg hover:shadow-primary/10',
      [
        div(classes: 'aspect-[16/9] w-full overflow-hidden bg-slate-100 dark:bg-slate-800', [
          div(
            classes: 'h-full w-full bg-cover bg-center transition-transform duration-500 group-hover:scale-105',
            attributes: {'style': 'background-image: url("${project.imageUrl}")'},
            [],
          ),
          div(classes: 'absolute top-3 left-3 right-3 flex items-center justify-between gap-2', [
            if (project.workedAt != null)
              span(
                classes:
                    'inline-flex items-center rounded-md bg-green-500/90 backdrop-blur-md px-2.5 py-1 text-xs font-semibold text-white border border-white/20 shadow-lg',
                [
                  span(classes: 'material-symbols-outlined mr-1 text-[14px]', [Component.text('business')]),
                  Component.text(project.workedAt!.companyName),
                ],
              ),
            span(
              classes:
                  'inline-flex items-center rounded-md bg-black/50 backdrop-blur-md px-2 py-1 text-xs font-medium text-white border border-white/10 ml-auto',
              [
                span(classes: 'material-symbols-outlined mr-1 text-[14px]', [Component.text(project.badgeIcon)]),
                Component.text(' ${project.badge}'),
              ],
            ),
          ]),
        ]),
        div(classes: 'flex flex-1 flex-col gap-4 p-5', [
          div([
            h3(classes: 'text-xl font-bold leading-tight text-slate-900 dark:text-white', [Component.text(project.title)]),
            p(classes: 'mt-2 text-sm leading-relaxed text-slate-500 dark:text-slate-400', [
              Component.text(project.description),
            ]),
          ]),
          div(classes: 'flex flex-wrap gap-2', [
            for (var tag in project.tags)
              span(
                classes:
                    'rounded bg-slate-100 dark:bg-slate-800 px-2 py-1 text-xs font-medium text-slate-600 dark:text-slate-300',
                [Component.text(tag)],
              ),
          ]),
          div(
            classes:
                'mt-auto flex items-center justify-between gap-4 pt-2 border-t border-slate-100 dark:border-slate-800',
            [
              if (project.secondaryActionUrl != null && project.secondaryActionText != null)
                a(
                  href: project.secondaryActionUrl!,
                  target: Target.blank,
                  classes:
                      'flex items-center gap-1.5 text-sm font-semibold text-slate-600 dark:text-slate-300 hover:text-primary dark:hover:text-primary transition-colors',
                  [
                    span(classes: 'material-symbols-outlined text-[18px]', [Component.text(project.secondaryActionIcon ?? 'code')]),
                    Component.text(' ${project.secondaryActionText}'),
                  ],
                ),
            ],
          ),
        ]),
      ],
    );
  }
}
