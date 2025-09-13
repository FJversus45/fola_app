import 'package:flutter/material.dart';
import 'package:fola_app/core/utils/extension2.dart';
import 'package:fola_app/modules/authentication/views/login/email_address_login.dart';
import 'package:fola_app/modules/authentication/views/login/phone_number_login.dart';
import 'package:fola_app/modules/onboarding/views/onboarding.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginMethods extends StatefulWidget {
  const LoginMethods({super.key});

  @override
  State<LoginMethods> createState() => _LoginMethodsState();
}

class _LoginMethodsState extends State<LoginMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back, size: 16, color: Colors.black),
                        Gap(context.getWidth(0.01)),
                        Text(
                          "Back",
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF000000),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.07,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Login",
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Gap(30),
                      ],
                    ),

                    SizedBox(),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: Color(0xFFF1F1F1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get confirmation text/email to login",
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Gap(8),
                Text(
                  "How would you like to receive a verification code?",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Gap(25),
              ],
            ),
          ),
          Gap(22),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhoneNumberLogin(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color(0xFFF9F9F9),
                        ),
                        child: Icon(Icons.phone, size: 35),
                      ),
                      Gap(20),
                      Text(
                        "Phone number",
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Gap(141),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
                Gap(25),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmailAddressLogin(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color(0xFFF9F9F9),
                        ),
                        child: Icon(Icons.email, size: 35),
                      ),
                      Gap(20),
                      Text(
                        "Email",
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Gap(230),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
                Gap(context.getHeight(0.58)),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Onboarding()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign up here.",
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF003366),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// read about FEN on the wiki link and write a 4 paragraph discourse on it.