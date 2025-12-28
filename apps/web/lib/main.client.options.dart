// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/client.dart';

import 'package:jportfolio_web/components/navigation/footer.dart'
    deferred as _footer;
import 'package:jportfolio_web/components/navigation/navbar.dart'
    deferred as _navbar;
import 'package:jportfolio_web/pages/contact.dart' deferred as _contact;
import 'package:jportfolio_web/pages/home.dart' deferred as _home;
import 'package:jportfolio_web/pages/projects.dart' deferred as _projects;

/// Default [ClientOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.client.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultClientOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ClientOptions get defaultClientOptions => ClientOptions(
  clients: {
    'footer': ClientLoader(
      (p) => _footer.Footer(),
      loader: _footer.loadLibrary,
    ),
    'navbar': ClientLoader(
      (p) => _navbar.Navbar(),
      loader: _navbar.loadLibrary,
    ),
    'contact': ClientLoader(
      (p) => _contact.Contact(),
      loader: _contact.loadLibrary,
    ),
    'home': ClientLoader((p) => _home.Home(), loader: _home.loadLibrary),
    'projects': ClientLoader(
      (p) => _projects.Projects(),
      loader: _projects.loadLibrary,
    ),
  },
);
