// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:jportfolio_web/components/navigation/footer.dart' as _footer;
import 'package:jportfolio_web/components/navigation/navbar.dart' as _navbar;
import 'package:jportfolio_web/pages/contact.dart' as _contact;
import 'package:jportfolio_web/pages/home.dart' as _home;
import 'package:jportfolio_web/pages/projects.dart' as _projects;
import 'package:jportfolio_web/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _footer.Footer: ClientTarget<_footer.Footer>('footer'),
    _navbar.Navbar: ClientTarget<_navbar.Navbar>('navbar'),
    _contact.Contact: ClientTarget<_contact.Contact>('contact'),
    _home.Home: ClientTarget<_home.Home>('home'),
    _projects.Projects: ClientTarget<_projects.Projects>('projects'),
  },
  styles: () => [..._app.App.styles],
);
