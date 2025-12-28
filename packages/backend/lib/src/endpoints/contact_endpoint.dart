import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ContactEndpoint extends Endpoint {
  Future<bool> sendMessage(Session session, ContactMessage message) async {
    session.log('Received contact message from: ${message.email}');
    // Save message to database
    await ContactMessage.db.insertRow(session, message);
    return true;
  }

  Future<List<ContactMessage>> getMessages(Session session) async {
    return await ContactMessage.db.find(
      session,
      orderBy: (t) => t.createdAt,
      orderDescending: true,
    );
  }
}
