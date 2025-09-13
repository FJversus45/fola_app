import 'package:flutter/material.dart';
import 'package:fola_app/modules/authentication/views/re-verification/verify_front_card.dart';
import 'package:fola_app/modules/authentication/widgets/date_box.dart';
import 'package:fola_app/modules/authentication/widgets/top_header_and_percentage.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyDob extends StatefulWidget {
  const VerifyDob({super.key});

  @override
  State<VerifyDob> createState() => _VerifyDobState();
}

class _VerifyDobState extends State<VerifyDob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopHeaderAndPercentage(image: "assets/15%.png"),
            Gap(20),
            Text(
              "Date of Birth (as it appears on your official ID)",
              style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Gap(20),
            Row(
              children: [
                DateBox(measurement: "Month"),
                // Expanded(flex: 1, child: SizedBox()),
                DateBox(measurement: "Day"),
                // Expanded(flex: 1, child: SizedBox()),
                DateBox(measurement: "Year"),
              ],
            ),
            Gap(400),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyFrontCard()),
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
          ],
        ),
      ),
    );
  }
}
