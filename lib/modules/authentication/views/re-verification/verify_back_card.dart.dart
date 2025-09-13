import 'package:flutter/material.dart';
import 'package:fola_app/modules/authentication/widgets/top_header_and_percentage.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyBackCard extends StatefulWidget {
  const VerifyBackCard({super.key});

  @override
  State<VerifyBackCard> createState() => _VerifyBackCardState();
}

class _VerifyBackCardState extends State<VerifyBackCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TopHeaderAndPercentage(image: "assets/15%.png"),
            Gap(20),
            Text(
              'Back of your ID',
              style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Gap(20),
            Image(image: AssetImage("assets/cardEmpty.png")),
            Gap(200),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerifyBackCard()),
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
          ],
        ),
      ),
    );
  }
}
