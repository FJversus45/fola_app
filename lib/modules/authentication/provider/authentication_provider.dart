import 'package:flutter/material.dart';
import 'package:fola_app/core/network/general_response.dart';
import 'package:fola_app/locator.dart';
import 'package:fola_app/modules/authentication/models/user_model.dart';
import 'package:fola_app/modules/authentication/services/authentication_service.dart';

class AuthenticationProvider extends ChangeNotifier {
  late AuthenticationService authService;

  AuthenticationProvider({AuthenticationService? authService}) {
    this.authService = authService ?? locator();
  }
  UserModel userModel = UserModel();
  bool isLoading = false;

  Future<GeneralResponse> signUp() async {
    try {
      isLoading = true;
      notifyListeners();
      final res = await authService.signup(userModel);
      if (res.success) {
        return GeneralResponse(success: true, message: "Registration Complete");
      } else {
        return GeneralResponse(success: false, message: res.message);
      }
    } catch (e) {
      print("An Error Occured");
      return GeneralResponse(success: false, message: e.toString());
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
