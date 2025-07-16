import 'package:flutter/material.dart';
import 'package:fola_app/core/utils/extension2.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const OnboardingWidget({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF6FBFF),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(width: 1, color: Color(0xFFD9E8F7)),
            ),
            child: SizedBox(
              height: context.getHeight(0.45),
              child: Center(child: Image.asset(image)),
            ),
          ),
          Gap(16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          Gap(16),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF003366),
            ),
          ),
        ],
      ),
    );
  }
}
