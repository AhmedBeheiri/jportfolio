import 'dart:io';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

void main(List<String> args) async {
  if (args.length < 2) {
    print('Usage: dart bin/create_admin.dart <email> <password>');
    exit(1);
  }

  final email = args[0];
  final password = args[1];

  // Initialize Serverpod
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
  );

  final session = await pod.createSession(enableLogging: true);

  try {
    print('Creating admin user: $email');
    
    // Check if user exists
    final existingUser = await Users.findUserByEmail(session, email);
    if (existingUser != null) {
      print('User with email $email already exists. Skipping creation.');
    } else {
      // Create new user
      final userInfo = await Emails.createUser(
        session,
        'Admin', // userName
        email,
        password,
      );

      if (userInfo != null) {
        print('Admin user created successfully! ID: ${userInfo.id}');
      } else {
        print('Failed to create admin user.');
      }
    }
  } catch (e, stack) {
    print('Error: $e');
    print(stack);
  } finally {
    await session.close();
    await pod.shutdown();
  }
}
