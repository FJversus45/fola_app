import 'package:fola_app/core/network/general_response.dart';
import 'package:fola_app/modules/authentication/models/user_model.dart';

abstract class AuthenticationService {
  Future<GeneralResponse> signup(UserModel user);
  Future<GeneralResponse> login(String email, String password);
}
