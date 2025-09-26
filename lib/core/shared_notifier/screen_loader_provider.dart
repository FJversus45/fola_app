// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:my_agent/core/shared_notifier/base_change_notifier.dart';
// import 'package:my_agent/core/shared_widgets/page_loader.dart';
// import 'package:my_agent/locator.dart';
// import 'package:my_agent/modules/message/view/new_chat_list2_view.dart';
// import 'package:my_agent/modules/message/view/new_chat_list_view.dart';
// import 'package:my_agent/modules/my_listing/views/my_listing_view.dart';
// import 'package:my_agent/modules/my_listing/views/new_listing_view.dart';
// import 'package:my_agent/modules/profile/view/new_profile_view.dart';
// import 'package:my_agent/modules/profile/view/profile_view.dart';
// import 'package:my_agent/unauthenticated_modules/authentication/provider/auth_provider.dart';
// import 'package:my_agent/unauthenticated_modules/home/views/map/home_view.dart';
// import 'package:my_agent/unauthenticated_modules/home/views/map/new_houses_view.dart';
// import 'package:my_agent/unauthenticated_modules/message/un_message_view.dart';
// import 'package:my_agent/unauthenticated_modules/profile/views/un_profile_view.dart';

// class ScreenLoaderProvider extends BaseChangeNotifier {
//   final auth = locator<AuthenticationProvider>();

//   Future<void> setupFcm() async {
//     FirebaseMessaging messaging = FirebaseMessaging.instance;
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       String? token = await messaging.getToken();
//       print("User granted permission");
//     } else if (settings.authorizationStatus ==
//         AuthorizationStatus.provisional) {
//       print("User granted provisional permission");
//     } else {
//       print("User declined");
//     }
//   }

//   List<Widget> getAuthenticatedScreens(String role) {
//     switch (role) {
//       case 'LANDLORD':
//         return [
//           NewHousesView(),
//           ChatsScreen(),
//           MyListingView(),
//           NewProfileView(),
//         ];
//       case 'AGENT':
//         return [
//           NewHousesView(),
//           ChatsScreen(),
//           MyListingView(),
//           NewProfileView(),
//         ];
//       case 'RENTER':
//         return [
//           NewHousesView(),
//           ChatsScreen(),
//           Scaffold(),
//           NewProfileView(),
//         ];
//       default:
//         return [
//           PageLoader(), // fallback or error screens
//           PageLoader(),
//           PageLoader(),
//           PageLoader(),
//         ];
//     }
//   }

//   final unauthenticatedScreens = [
//     NewHousesView(),
//     NewListingView(),
//     MyListingView(),
//     NewProfileView(),
//   ];

//   Future<List<Widget>> loadScreens() async {
//     setLoading = true;
//     notifyListeners();

//     // Ensure we have the latest auth state and user data
//     await auth.checkAuthentication();

//     // Wait for user role to be available
//     while (auth.user.role.isEmpty && auth.isAuthenticated) {
//       await Future.delayed(Duration(milliseconds: 100));
//     }

//     List<Widget> screens;
//     if (auth.isAuthenticated) {
//       screens = getAuthenticatedScreens(auth.user.role);
//     } else {
//       screens = unauthenticatedScreens;
//     }

//     setLoading = false;
//     notifyListeners();
//     return screens;
//   }
// }
