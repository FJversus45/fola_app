import 'package:flutter/material.dart';
import 'package:fola_app/core/shared_widgets/custom_text_field.dart';
import 'package:fola_app/modules/utils/validators.dart';
import 'package:fola_app/modules/authentication/views/re-verification/verify_dob.dart';
import 'package:fola_app/modules/authentication/widgets/e_z_button.dart';
import 'package:fola_app/modules/authentication/widgets/top_header_and_percentage.dart';
import 'package:gap/gap.dart';

class VerifyIdentity extends StatefulWidget {
  const VerifyIdentity({super.key});

  @override
  State<VerifyIdentity> createState() => _VerifyIdentityState();
}

class _VerifyIdentityState extends State<VerifyIdentity> {
  String gender = "MALE";
  final genders = ["MALE", "FEMALE"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopHeaderAndPercentage(image: "assets/blank.png"),
            Gap(20),
            CustomTextField(
              hintText: "Enter Your Full Name",
              labelText: "Full Name (as it appars on your ID)",
              validator: Validators.validateString(
                error: "Enter Your Full Name",
              ),
            ),
            Gap(15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xFFF1F0F0), width: 1),
                color: Color(0xFFFCFCFC),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: gender,
                  items:
                      genders
                          .map(
                            (gend) => DropdownMenuItem(
                              value: gend,
                              child: Text(
                                gend,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.5,
                                  color: Color(0xFF0F1017),
                                ),
                              ),
                            ),
                          )
                          .toList(),

                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
              ),
            ),
            Gap(400),
            EZButton(
              text: "Continue",
              navigate: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyDob()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
