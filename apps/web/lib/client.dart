import 'package:backend_client/backend_client.dart';

Client? _client;

Client get client {
  // Use 'BACKEND_URL' if provided (e.g. from --dart-define), otherwise default to localhost
  const envUrl = String.fromEnvironment('BACKEND_URL', defaultValue: 'http://127.0.0.1:8080/');
  
  // Ensure protocol is present
  final baseUrl = envUrl.startsWith('http') ? envUrl : 'https://$envUrl';
  
  _client ??= Client(baseUrl);
  return _client!;
}

const bool kIsWeb = identical(0, 0.0);
