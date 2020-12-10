import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:habbit_tracker/models/push_notificaton_message.dart';

class PushNotificationService {
  final FirebaseMessaging _firebaseMessaging;

  PushNotificationService(this._firebaseMessaging);

  Future initialise() async {
    String token = await _firebaseMessaging.getToken();
    print("FirebaseMessaing token: $token");

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
        PushNotificationMessage notificaton = PushNotificationMessage(
          title: message['notification']['title'],
          body: message['notification']['body'],
        );
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );
  }
}
