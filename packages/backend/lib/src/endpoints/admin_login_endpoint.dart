import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

/// Simple admin login endpoint - validates credentials and returns auth key
class AdminLoginEndpoint extends Endpoint {
  @override
  bool get requireLogin => false;

  /// Authenticate admin user with email and password
  /// Returns auth key on success, null on failure
  Future<String?> authenticate(
    Session session,
    String email,
    String password,
  ) async {
    try {
      session.log('=== ADMIN LOGIN ATTEMPT ===', level: LogLevel.info);
      session.log('Email: $email', level: LogLevel.info);
      session.log('Password length: ${password.length}', level: LogLevel.info);
      
      // Use Serverpod's static Emails.authenticate method
      final authResponse = await Emails.authenticate(session, email, password);

      session.log('Auth response success: ${authResponse.success}', level: LogLevel.info);
      if (authResponse.failReason != null) {
        session.log('Auth fail reason: ${authResponse.failReason}', level: LogLevel.info);
      }

      if (authResponse.success && authResponse.key != null) {
        session.log('LOGIN SUCCESS - returning key', level: LogLevel.info);
        return authResponse.key;
      }
      
      session.log('LOGIN FAILED for email: $email', level: LogLevel.warning);
      return null;
    } catch (e, stack) {
      session.log('Admin login error: $e\n$stack', level: LogLevel.error);
      return null;
    }
  }
}
