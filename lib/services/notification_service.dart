// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationService {
//   final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   Future<void> initialize() async {
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: AndroidInitializationSettings('app_icon'),
//       iOS: IOSInitializationSettings(),
//     );

//     await _flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onSelectNotification: onSelectNotification,
//     );
//   }

//   Future<void> showNotification({
//     required int id,
//     required String title,
//     required String body,
//   }) async {
//     final AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       'your_channel_id', // Change this to your channel ID
//       'your_channel_name', // Change this to your channel name
//       'your_channel_description', // Change this to your channel description
//       importance: Importance.max,
//       priority: Priority.high,
//     );

//     final IOSNotificationDetails iOSPlatformChannelSpecifics =
//         IOSNotificationDetails();

//     final NotificationDetails platformChannelSpecifics =
//         NotificationDetails(
//       android: androidPlatformChannelSpecifics,
//       iOS: iOSPlatformChannelSpecifics,
//     );

//     await _flutterLocalNotificationsPlugin.show(
//       id,
//       title,
//       body,
//       platformChannelSpecifics,
//       payload: 'Default_Sound',
//     );
//   }

//   Future<void> onSelectNotification(String? payload) async {
//     // Handle notification selection
//     print('Notification selected with payload: $payload');
//   }
// }
