// ignore_for_file: avoid_print
import 'package:serverpod/serverpod.dart';

class LoginPageWidget extends TemplateWidget {
  LoginPageWidget({required String apiUrl}) : super(name: 'login', values: {'apiUrl': apiUrl});
}

class DashboardPageWidget extends TemplateWidget {
  DashboardPageWidget({required String apiUrl}) : super(name: 'dashboard', values: {'apiUrl': apiUrl});
}

class AdminRoute extends WidgetRoute {
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
              print('DEBUG: Found auth key in cookie: ${authKey.substring(0, 10)}...');
              break;
            }
          }
        }
      }
      
      print('DEBUG: AdminRoute authKey: $authKey');

      final config = Serverpod.instance.config;
      final apiUrl = Uri(scheme: config.apiServer.publicScheme, host: config.apiServer.publicHost, port: config.apiServer.publicPort).toString();

      if (authKey == null || authKey.isEmpty) {
        return LoginPageWidget(apiUrl: apiUrl);
      } else {
        return DashboardPageWidget(apiUrl: apiUrl);
      }
    } catch (e, stack) {
      print('ERROR in AdminRoute: $e');
      print(stack);
      rethrow;
    }
  }
}


