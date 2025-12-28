// ignore_for_file: avoid_print
import 'package:serverpod/serverpod.dart';

class AdminSocialWidget extends TemplateWidget {
  AdminSocialWidget() : super(name: 'admin_social');
}

class AdminSocialRoute extends WidgetRoute {
  AdminSocialRoute() : super(methods: {Method.get, Method.post});

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

      // Return the admin social links page
      return AdminSocialWidget();
    } catch (e, stack) {
      print('ERROR in AdminSocialRoute: $e');
      print(stack);
      rethrow;
    }
  }
}
