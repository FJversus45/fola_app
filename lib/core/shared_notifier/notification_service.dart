// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:my_agent/core/shared_notifier/base_change_notifier.dart';

// @pragma('vm:entry-point')
// Future<void> firebaseBgHandler(RemoteMessage message) async {
//   await NotificationService.instance.setupFlutterNotifications();
//   await NotificationService.instance.showNotification(message);
// }

// class NotificationService extends BaseChangeNotifier {
//   NotificationService();
//   static final NotificationService instance = NotificationService();

//   final messaging = FirebaseMessaging.instance;
//   final localNotification = FlutterLocalNotificationsPlugin();
//   bool isLocalNotInit = false;

//   Future<void> initialize() async {
//     FirebaseMessaging.onBackgroundMessage(firebaseBgHandler);
//     await requestPermission();
//     await setupMessageHandlers();

//     final token = await messaging.getToken();
//     print("Fcm Token: $token");

//     if (token != null) {
//       await saveFcmToken(token);
//     }
//     messaging.onTokenRefresh.listen(saveFcmToken);
//   }

//   Future<void> saveFcmToken(String token) async {
//     try {
//       final res = await authService.saveFCMToken(token);
//       if (res.success) {
//         print(res.data);
//       } else {
//         handleError(res.data);
//       }
//     } catch (e) {
//       handleError(e.toString());
//     }
//   }

//   Future<void> requestPermission() async {
//     final settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//     print("User granted permission: ${settings.authorizationStatus}");
//   }

//   Future<void> setupFlutterNotifications() async {
//     if (isLocalNotInit) {
//       return;
//     }
//     // android setup
//     const channel = AndroidNotificationChannel(
//       "high_importance_channel",
//       "high importance notifications",
//       description: "Notifies 30 minutes before events",
//       importance: Importance.high,
//     );

//     await localNotification
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);

//     const initializationSettingsAndroid =
//         AndroidInitializationSettings("@mipmap/ic_launcher");

//     // ios setup
//     const initializationSettingsDarwin = DarwinInitializationSettings(
//       requestAlertPermission: true,
//       requestBadgePermission: true,
//       requestSoundPermission: true,
//     );

//     final initializationSettings = InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsDarwin,
//     );

//     await localNotification.initialize(initializationSettings,
//         onDidReceiveBackgroundNotificationResponse: (details) {
//       // we come back to this and see what we can do here
//     }, onDidReceiveNotificationResponse: (details) {
//       // we come back to this and see what we can do here
//     });

//     isLocalNotInit = true;
//   }

//   Future<void> showNotification(RemoteMessage message) async {
//     RemoteNotification? notification = message.notification;
//     AndroidNotification? android = message.notification?.android;
//     // AppleNotification? ios = message.notification?.apple;

//     if (notification != null && android != null) {
//       await localNotification.show(
//         notification.hashCode,
//         notification.title,
//         notification.body,
//         NotificationDetails(
//           android: AndroidNotificationDetails(
//             "high_importance_channel",
//             "high importance notifications",
//             channelDescription:
//                 "This channel is used for important notifications",
//             importance: Importance.high,
//             priority: Priority.high,
//             icon: "@mipmap/ic_launcher",
//           ),
//           iOS: const DarwinNotificationDetails(
//             presentAlert: true,
//             presentBadge: true,
//             presentSound: true,
//           ),
//         ),
//         payload: message.data.toString(),
//       );
//     }
//   }

//   Future<void> setupMessageHandlers() async {
//     // foreground message
//     FirebaseMessaging.onMessage.listen((message) async {
//       print("onMessage: $message");
//       showNotification(message);
//     });

//     //backgound message

//     FirebaseMessaging.onMessageOpenedApp.listen(handleBgMsg);

//     final initialMessage = await messaging.getInitialMessage();
//     if (initialMessage != null) {
//       handleBgMsg(initialMessage);
//     }
//   }

//   void handleBgMsg(RemoteMessage message) {}
// }
