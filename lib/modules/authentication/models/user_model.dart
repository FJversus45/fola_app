import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  String id;
  String firstName;
  String lastName;
  String middleName;
  int dob;
  String gender;
  String password;
  String country;
  String phoneNumber;
  String email;

  int lastLogin;
  List<String> uses;
  bool isVerified;

  UserModel({
    this.id = "",
    this.firstName = "",
    this.lastName = "",
    this.middleName = "",
    this.dob = 0,
    this.gender = "",
    this.password = "",
    this.country = "",
    this.phoneNumber = "",
    this.email = "",
    this.lastLogin = 0,
    this.uses = const [],
    this.isVerified = false,
  });

  factory UserModel.fromJson(DocumentSnapshot json) {
    final data = json.data() as Map<String, dynamic>;
    return UserModel(
      id: json.id,
      email: data["email"] as String? ?? "",
      password: data["password"] as String? ?? '',
      phoneNumber: data["phoneNumber"] as String? ?? '',
      firstName: data["firstName"] as String? ?? '',
      middleName: data["middleName"] as String? ?? '',
      lastName: data["lastName"] as String? ?? '',
      gender: data["gender"] as String? ?? '',
      country: data["country"] as String? ?? '',
      dob: data["dob"] as int? ?? 0,

      lastLogin: data["lastLogin"] as int? ?? 0,
      isVerified: data["isVerified"] as bool? ?? false,
      uses: data["uses"] as List<String>? ?? [],
    );
  }

  @override
  List<Object?> get props => [
    id,
    email,
    phoneNumber,
    firstName,
    middleName,
    lastName,
    lastLogin,
    dob,
    isVerified,

    uses,
    country,
    gender,
  ];
}
