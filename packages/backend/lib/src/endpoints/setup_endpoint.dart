import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

/// Setup endpoint for creating initial admin user
/// This should be called once to bootstrap the admin account
class SetupEndpoint extends Endpoint {
  /// Creates a test admin user
  /// Returns true if successful, false if user already exists
  Future<bool> createAdminUser(Session session) async {
    try {
      final email = 'admin@example.com';
      final password = 'admin123';
      final userName = 'Admin User';

      // Check if user already exists
      final existingUser = await Users.findUserByEmail(session, email);
      if (existingUser != null) {
        session.log('Admin user already exists', level: LogLevel.info);
        return false;
      }

      // Create the admin user
      final userInfo = await Emails.createUser(
        session,
        userName,
        email,
        password,
      );

      if (userInfo != null) {
        session.log('Admin user created successfully: $email', level: LogLevel.info);
        return true;
      } else {
        session.log('Failed to create admin user', level: LogLevel.error);
        return false;
      }
    } catch (e, stack) {
      session.log('Error creating admin user: $e\n$stack', level: LogLevel.error);
      return false;
    }
  }

  /// Deletes and recreates the admin user (useful for password reset)
  Future<bool> resetAdminUser(Session session) async {
    try {
      final email = 'admin@example.com';
      final password = 'admin123';
      final userName = 'Admin User';

      // Find and delete existing user
      final existingUser = await Users.findUserByEmail(session, email);
      if (existingUser != null) {
        // Delete email auth entry
        await EmailAuth.db.deleteWhere(
          session,
          where: (t) => t.userId.equals(existingUser.id!),
        );
        
        // Delete user info
        await UserInfo.db.deleteWhere(
          session,
          where: (t) => t.id.equals(existingUser.id!),
        );
        
        session.log('Deleted existing admin user', level: LogLevel.info);
      }

      // Create new user
      final userInfo = await Emails.createUser(
        session,
        userName,
        email,
        password,
      );

      if (userInfo != null) {
        session.log('Admin user recreated successfully: $email', level: LogLevel.info);
        return true;
      } else {
        session.log('Failed to recreate admin user', level: LogLevel.error);
        return false;
      }
    } catch (e, stack) {
      session.log('Error resetting admin user: $e\n$stack', level: LogLevel.error);
      return false;
    }
  }
}
