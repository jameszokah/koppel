import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:go_router/go_router.dart';
import 'package:trashx_driver/router/router.dart';

Future<void> handleBackgroundMessage(RemoteMessage? message) async {
  print("Notification Title ${message?.notification?.title}");
  print("Notification Body ${message?.notification?.body}");
  print("Notification Payload ${message?.data}");
}
class FirebaseServices {
  final _firebaseMessaging = FirebaseMessaging.instance;

  void handleMessage(RemoteMessage? message) {
    if(message == null) return;
    GoRouter.of(rootNavigator.currentState!.context).namedLocation(RouteName.home,queryParameters: <String, dynamic>{'message': message});
    
  }

  Future initPushNotification() async {
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true
    );

    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    
  }

  Future<void> initNotification() async {
      await _firebaseMessaging.requestPermission();
      final fCMToken = await _firebaseMessaging.getToken();
        print("TOKEN: ====== $fCMToken");
        initPushNotification();
  

      


  }
}
