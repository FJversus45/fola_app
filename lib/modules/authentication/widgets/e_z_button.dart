import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EZButton extends StatelessWidget {
  const EZButton({super.key, required this.text, required this.navigate});

  final String text;
  final VoidCallback navigate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: navigate,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF003366),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
    );
  }
}
