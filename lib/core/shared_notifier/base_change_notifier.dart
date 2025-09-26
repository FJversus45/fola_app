// import 'package:flutter/material.dart';
// import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
// import 'package:my_agent/locator.dart';
// import 'package:my_agent/modules/message/services/chat_services.dart';
// import 'package:my_agent/modules/my_listing/services/listing_service.dart';
// import 'package:my_agent/modules/paystack/services/paystack_service.dart';
// import 'package:my_agent/modules/profile/services/profile_services.dart';
// import 'package:my_agent/unauthenticated_modules/authentication/services/auth_service.dart';
// import 'package:my_agent/unauthenticated_modules/home/services/home_service.dart';
// import 'package:package_info_plus/package_info_plus.dart';

// class BaseChangeNotifier extends ChangeNotifier {
//   late AuthService authService;
//   late HomeService homeService;
//   late ListingService listingService;
//   late PaystackService paystackService;
//   late ProfileServices profileServices;
//   late ChatService chatService;

//   BaseChangeNotifier({
//     AuthService? authService,
//     HomeService? homeService,
//     ListingService? listingService,
//     PaystackService? paystackService,
//     ProfileServices? profileServices,
//     ChatService? chatService,
//   }) {
//     this.authService = authService ?? locator();
//     this.homeService = homeService ?? locator();
//     this.listingService = listingService ?? locator();
//     this.paystackService = paystackService ?? locator();
//     this.profileServices = profileServices ?? locator();
//     this.chatService = chatService ?? locator();
//   }

//   bool _isLoading = false;
//   bool get isLoading => _isLoading;

//   set setLoading(bool isLoading) {
//     _isLoading = isLoading;
//     notifyListeners();
//   }

//   String _message = '';
//   String get message => _message;

//   set setMessage(String message) {
//     _message = message;
//     notifyListeners();
//   }

//   void handleError(String? message) {
//     setLoading = false;
//     setMessage = message ?? 'Failed';
//     notifyListeners();
//   }

//   void handleSuccess(String? message) {
//     setLoading = false;
//     setMessage = message ?? 'Successful';
//     notifyListeners();
//   }

//   Future<String> get appVersionNumber async {
//     Map<String, dynamic> appVersionDetails = await getVersionNumber();
//     return appVersionDetails['version'] ?? '';
//   }

//   Future<String> get appVersion async {
//     // String baseURL = await this.userRepository.getBaseURl();

//     Map<String, dynamic> appVersionDetails = await getVersionNumber();

//     String versionNumber = '';

//     String releaseVersion = 'RELEASE';

//     if (releaseVersion.toUpperCase() == 'STAGING') {
//       versionNumber = 'V' + appVersionDetails['version'];
//       //  +
//       // " T." +
//       // appVersionDetails["buildNumber"];
//     } else {
//       versionNumber = 'V' + appVersionDetails['version'];
//       //  +
//       // " b." +
//       // appVersionDetails["buildNumber"];
//     }

//     return versionNumber;
//   }

//   Future<Map<String, dynamic>> getVersionNumber() async {
//     PackageInfo packageInfo = await PackageInfo.fromPlatform();

//     String appName = packageInfo.appName;
//     String packageName = packageInfo.packageName;
//     String version = packageInfo.version;
//     String buildNumber = packageInfo.buildNumber;

//     return {
//       'appName': appName,
//       'packageName': packageName,
//       'version': version,
//       'buildNumber': buildNumber,
//     };
//   }

//   Future<bool> checkInternet() async =>
//       await InternetConnection().hasInternetAccess;
// }
