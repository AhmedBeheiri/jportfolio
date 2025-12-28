import 'package:backend_client/backend_client.dart';

Client? _client;

Client get client {
  _client ??= Client('http://127.0.0.1:8080/');
  return _client!;
}

const bool kIsWeb = identical(0, 0.0);
