import 'package:flutter/material.dart';
import 'package:fola_app/core/handlers/snackbar.dart';
import 'package:fola_app/core/shared_widgets/loading_overlay_scaffold.dart';
import 'package:fola_app/modules/authentication/provider/authentication_provider.dart';
import 'package:fola_app/modules/home/views/dashboard.dart';
import 'package:fola_app/modules/utils/extension2.dart';
import 'package:fola_app/modules/authentication/widgets/topHeader.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import "../../../utils/validators.dart";
import '../../../../core/shared_widgets/custom_text_field.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final form = GlobalKey<FormState>();
  bool policyCheck = false;
  bool emailCheck = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, auth, _) {
        return LoadingOverlayScaffold(
          isLoading: auth.isLoading,
          child: Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(16),

                  child: Form(
                    key: form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Topheader(heading: "Create Password"),
                        Gap(context.getHeight(0.03)),
                        CustomTextField(
                          controller: passwordController,
                          labelText: "Enter Password",
                          validator: Validators.validatePassword(),
                          suffixIcon: Icon(Icons.remove_red_eye),
                          hintText: "Password",
                        ),

                        Gap(context.getHeight(0.04)),
                        CustomTextField(
                          controller: confirmController,
                          labelText: "Confirm Password",
                          validator: Validators.validatePassword(),
                          suffixIcon: Icon(Icons.remove_red_eye),
                          hintText: "Password",
                        ),

                        Gap(context.getHeight(0.3)),
                        Row(
                          children: [
                            Checkbox(
                              value: emailCheck,
                              onChanged: (value) {
                                setState(() {
                                  emailCheck = value!;
                                });
                              },
                            ),
                            Gap(5),
                            Expanded(
                              child: Text(
                                "I agree to receiving email updates about new products, announcements, and special deals.",
                                style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.07,
                                  color: Color(0xFF000000),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Gap(context.getHeight(0.02)),
                        Row(
                          children: [
                            Checkbox(
                              value: policyCheck,
                              onChanged: (value) {
                                setState(() {
                                  policyCheck = value!;
                                });
                              },
                            ),
                            Gap(5),
                            Text(
                              "I agree to the Terms of Use and Privacy Policy",
                              style: GoogleFonts.montserrat(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.07,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                        Gap(context.getHeight(0.03)),
                        ElevatedButton(
                          onPressed: () async {
                            if (policyCheck) {
                              if (!form.currentState!.validate()) return;
                              auth.userModel.password = passwordController.text;
                              await auth.signUp().then((res) {
                                if (res.success) {
                                  SnackbarHandler.showSuccessSnackbar(
                                    context: context,
                                    message: res.message,
                                  );
                                } else {
                                  SnackbarHandler.showErrorSnackbar(
                                    context: context,
                                    message: res.message,
                                  );
                                }
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Dashboard(),
                                ),
                              );
                            }
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
