import 'package:flutter/material.dart';
import 'package:fola_app/core/utils/extension2.dart';
import 'package:fola_app/modules/authentication/views/signup/password.dart';
import 'package:fola_app/modules/authentication/widgets/topHeader.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import "../../../../core/utils/validators.dart";
import '../../../../core/shared_widgets/custom_text_field.dart';

class BasicInformation extends StatefulWidget {
  const BasicInformation({super.key});

  @override
  State<BasicInformation> createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  String gender = "MALE";
  final genders = ["MALE", "FEMALE"];
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Form(
            key: form,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Topheader(heading: "Basic Information"),
                Gap(context.getHeight(0.02)),

                CustomTextField(
                  controller: nameController,
                  labelText: "Full Name (as it appears on your official ID)",
                  validator: Validators.validateString(
                    error: "Enter a valid name",
                  ),
                  hintText: "Enter Full Name",
                ),
                Gap(context.getHeight(0.02)),
                Text(
                  "Gender",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Gap(4),
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

                Gap(context.getHeight(0.03)),
                Container(
                  decoration: BoxDecoration(),
                  child: CustomTextField(
                    controller: emailController,
                    labelText: "Email",
                    validator: (value) => Validators.validateEmail(value),
                    hintText: "Enter your email address",
                  ),
                ),

                Gap(context.getHeight(0.04)),
                Text(
                  "Enter Phone Number",
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF000000),
                    letterSpacing: 0.07,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Gap(context.getHeight(0.03)),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        border: Border.all(width: 1, color: Color(0xFFF1F0F0)),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Row(
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
                    ),
                    Gap(context.getWidth(0.05)),

                    Expanded(
                      child: CustomTextField(
                        hintText: "00 0000 000",
                        validator: Validators.validatePhoneNumber(),
                      ),
                    ),
                  ],
                ),
                Gap(context.getHeight(0.134)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (!form.currentState!.validate()) return;

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Password()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF003366),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text(
                      "Continue",
                      style: GoogleFonts.montserrat(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.07,
                      ),
                    ),
                  ),
                ),
                Gap(context.getHeight(0.01)),
                Center(
                  child: Text(
                    "Already have an account. Sign in here",
                    style: GoogleFonts.montserrat(
                      color: Color(0xFF000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.07,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
