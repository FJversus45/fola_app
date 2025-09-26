import 'package:flutter/material.dart';
import 'package:fola_app/modules/utils/extension2.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginVerification extends StatefulWidget {
  const LoginVerification({super.key});

  @override
  State<LoginVerification> createState() => _LoginVerificationState();
}

class _LoginVerificationState extends State<LoginVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(
          title: Text(
            "Verification",
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          leading: Row(
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kindly Verify Your Email",
              style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Gap(5),
            Text(
              "To log in, kindly verify your email via the email sent to you ",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Gap(80),
            Stack(
              children: [
                Icon(
                  Icons.send_rounded,
                  color: Color(0xFF003366).withOpacity(0.6),
                  size: 100,
                ),
                Positioned(
                  left: 20,
                  bottom: 10,
                  child: Text("Account Verified"),
                ),
              ],
            ),
            Gap(150),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Uses()),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 40),
                      backgroundColor: Color(0xff003366),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/reload.png')),

                        Gap(6),
                        Text(
                          "Resend code",
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
