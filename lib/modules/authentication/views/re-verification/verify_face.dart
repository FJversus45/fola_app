import 'package:flutter/material.dart';
import 'package:fola_app/modules/authentication/widgets/top_header_and_percentage.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyFace extends StatefulWidget {
  const VerifyFace({super.key});

  @override
  State<VerifyFace> createState() => _VerifyFaceState();
}

class _VerifyFaceState extends State<VerifyFace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TopHeaderAndPercentage(image: "assets/55%.png"),
            Gap(30),
            Text(
              "Take a Selfie",
              style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Gap(30),
            Stack(
              children: [
                Image(image: AssetImage("assets/border.png")),
                Positioned(
                  bottom: 4,
                  child: Image(image: AssetImage("assets/egg.png")),
                ),
                Positioned(
                  height: 2,
                  bottom: 30,
                  child: Image(image: AssetImage("assets/fade.png")),
                ),
              ],
            ),
            Gap(20),
            Text(
              "Keep your face within the oval",
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
