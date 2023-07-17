import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';
import 'package:trashx_driver/router/router.dart';

Future<void> handleBackgroundMessage(RemoteMessage? message) async {
  print("Notification Title ${message?.notification?.title}");
  print("Notification Body ${message?.notification?.body}");
  print("Notification Payload ${message?.data}");
}
class FirebaseServices {
  final _firebaseMessaging = FirebaseMessaging.instance;
  RemoteMessage? checkMessage;


  final AndroidNotificationChannel _androidNotificationChannel = const AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  description: 'This channel is used for important notifications.', // description
  importance: Importance.max,
);

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();


  void initLocalNotification() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@drawable/ic_launcher');
    final DarwinInitializationSettings initializationSettingsIOS = DarwinInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification
        );
    final InitializationSettings initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
    onDidReceiveBackgroundNotificationResponse: onDidReceiveBackgroundNotificationResponse,
    onDidReceiveNotificationResponse: onDidReceiveBackgroundNotificationResponse
    );


     await flutterLocalNotificationsPlugin
  .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
  ?.createNotificationChannel(_androidNotificationChannel);

  }

    void onDidReceiveBackgroundNotificationResponse(NotificationResponse response) async {
      final message = RemoteMessage.fromMap(jsonDecode(response.payload!));
      handleMessage(message);
  }

  void onDidReceiveLocalNotification(int id, String? title, String? body, String? payload) async {
    print("Notification Title $title");
    print("Notification Body $body");
    print("Notification Payload $payload");
  }



  void handleMessage(RemoteMessage? message) {
    if(message == null) return;
    GoRouter.of(rootNavigator.currentState!.context).namedLocation(RouteName.orderTracking,queryParameters: <String, dynamic>{'message': message});
    checkMessage = message;
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
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification?.android;

  // If `onMessage` is triggered with a notification, construct our own
  // local notification to show to users using the created channel.
  if (notification != null && android != null) {
    flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            _androidNotificationChannel.id,
            _androidNotificationChannel.name,
             channelDescription: _androidNotificationChannel.description,
            icon: "@drawable/ic_launcher",
            playSound: true,
            importance: Importance.max,
            priority: Priority.high,
            sound: const RawResourceAndroidNotificationSound('notification'),
            // other properties...
          ),

        ),
        payload: jsonEncode(message.toMap()),
        );
  }
});

  }

  Future<void> initNotification() async {
      await _firebaseMessaging.requestPermission();
      final fCMToken = await _firebaseMessaging.getToken();
        print("TOKEN: ====== $fCMToken");
        initPushNotification();
        initLocalNotification();

  }
  bool get isNewNotification => checkMessage != null;

    // static bool isNewNotification() => isNewMessage();
}
