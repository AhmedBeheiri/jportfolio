// ignore_for_file: avoid_print
import 'package:serverpod/serverpod.dart';

class AdminAboutWidget extends TemplateWidget {
  AdminAboutWidget() : super(name: 'admin_about');
}

class AdminAboutRoute extends WidgetRoute {
  AdminAboutRoute() : super(methods: {Method.get, Method.post});

  @override
  Future<WebWidget> build(Session session, Request request) async {
    try {
      // Try to get auth key from session (Authorization header)
      var authKey = session.authenticationKey;
      
      // If not in session, try to get it from cookies
      if (authKey == null) {
        final cookieHeader = request.headers['cookie']?.firstOrNull;
        if (cookieHeader != null) {
          // Parse cookies to find serverpod_auth
          final cookies = cookieHeader.split(';').map((c) => c.trim());
          for (final cookie in cookies) {
            if (cookie.startsWith('serverpod_auth=')) {
              authKey = cookie.substring('serverpod_auth='.length);
              break;
            }
          }
        }
      }

      // Redirect to login if not authenticated
      if (authKey == null || authKey.isEmpty) {
        return RedirectWidget(url: '/admin');
      }

      // Return the admin about page
      return AdminAboutWidget();
    } catch (e, stack) {
      print('ERROR in AdminAboutRoute: $e');
      print(stack);
      rethrow;
    }
  }
}
