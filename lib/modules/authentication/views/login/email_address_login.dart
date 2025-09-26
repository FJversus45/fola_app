import 'package:flutter/material.dart';
import 'package:fola_app/core/shared_widgets/custom_text_field.dart';
import 'package:fola_app/modules/utils/extension2.dart';
import 'package:fola_app/modules/utils/validators.dart';
import 'package:fola_app/modules/authentication/views/login/phone_number_login.dart';
import 'package:fola_app/modules/authentication/widgets/better_check_box.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailAddressLogin extends StatefulWidget {
  const EmailAddressLogin({super.key});

  @override
  State<EmailAddressLogin> createState() => _EmailAddressLoginState();
}

class _EmailAddressLoginState extends State<EmailAddressLogin> {
  @override
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
                            "Email Address",
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
            Gap(10),
            CustomTextField(
              labelText: "Email Address",
              hintText: "00 0000 0000",
              validator: Validators.validatePhoneNumber(),
            ),
            Gap(5),
            Row(
              children: [
                BetterCheckBox(),
                Gap(8),
                Text(
                  "Remember Email Address",
                  style: GoogleFonts.montserrat(
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Gap(context.getHeight(0.55)),
            ElevatedButton(
              onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => Password()),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF003366),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                "Next",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.07,
                ),
              ),
            ),
            Gap(8),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhoneNumberLogin()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Color(0xFF003366)),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                "Recieve code another way",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.07,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
