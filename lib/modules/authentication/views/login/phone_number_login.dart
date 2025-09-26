import 'package:flutter/material.dart';
import 'package:fola_app/core/shared_widgets/custom_text_field.dart';
import 'package:fola_app/modules/utils/extension2.dart';
import 'package:fola_app/modules/utils/validators.dart';
import 'package:fola_app/modules/authentication/views/login/email_address_login.dart';
import 'package:fola_app/modules/authentication/widgets/better_check_box.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneNumberLogin extends StatefulWidget {
  const PhoneNumberLogin({super.key});

  @override
  State<PhoneNumberLogin> createState() => _PhoneNumberLoginState();
}

class _PhoneNumberLoginState extends State<PhoneNumberLogin> {
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
                      "Phone number",
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
            Gap(10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Phone Number",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                    color: Colors.black,
                  ),
                ),
                Gap(10),
                Row(
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage("assets/naija.png")),

                        Text(
                          "+234",
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Icon(Icons.arrow_drop_down, size: 15),
                      ],
                    ),
                    Gap(10),
                    Expanded(
                      child: CustomTextField(
                        hintText: "00 0000 0000",
                        validator: Validators.validatePhoneNumber(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Gap(5),
            Row(
              children: [
                BetterCheckBox(),
                Gap(8),
                Text(
                  "Remember Phone Number",
                  style: GoogleFonts.montserrat(
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Gap(context.getHeight(0.5)),
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
                  MaterialPageRoute(builder: (context) => EmailAddressLogin()),
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
