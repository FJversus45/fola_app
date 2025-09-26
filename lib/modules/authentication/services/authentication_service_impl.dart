import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fola_app/core/network/general_response.dart';
import 'package:fola_app/modules/authentication/models/user_model.dart';
import 'package:fola_app/modules/authentication/services/authentication_service.dart';

class AuthenticationServiceImpl implements AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _database = FirebaseFirestore.instance;
  // @override
  // // Future<GeneralResponse> login(String email, String password) async {
  // //   // try {
  // //   //   UserCredential userCredential = await _auth.signInWithEmailAndPassword(
  // //   //     email: email,
  // //   //     password: password,
  // //   //   );
  // //   //   if (userCredential.user != null) {
  // //   //     final userId = userCredential.user!.uid;

  // //   //   }
  // //   // } catch (e) {}

  // // }

  @override
  Future<GeneralResponse> signup(UserModel user) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(
            email: user.email,
            password: user.password,
          );
      if (userCredential.user != null) {
        final userId = userCredential.user!.uid;
        final createdAt = DateTime.now().toIso8601String();
        final userData = {
          "firstName": user.firstName,
          "middleName": user.middleName,
          "lastName": user.lastName,
          "phoneNumber": user.phoneNumber,
          "dob": user.dob,
          "gender": user.gender,
          "country": user.country,
          "uses": user.uses,
          "isVerified": user.isVerified,
          "lastLogin": user.lastLogin,
        };
        await _database.collection("Users").doc(userId).set(userData);
        await userCredential.user!.sendEmailVerification();
      }
      return GeneralResponse(
        success: true,
        data: userCredential.user,
        message: "SignUp Successful, Please Verify Your Email",
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'email-already-in-use':
          errorMessage = "The email address is already in use by another user.";
          break;
        case 'invalid-email':
          errorMessage = "The email address is not valid.";
          break;
        case 'weak-password':
          errorMessage = "The password provided is too weak.";
          break;
        case 'operation-not-allowed':
          errorMessage =
              "Creating an account with email and password is not enabled.";
          break;
        default:
          errorMessage = "An undefined error happened.";
      }
      return GeneralResponse(success: false, message: errorMessage);
    }
  }

  @override
  Future<GeneralResponse> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
