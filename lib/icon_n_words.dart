import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class IconNWords extends StatelessWidget {
  const IconNWords({super.key, required this.image, required this.words});
  final String image;
  final String words;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(image)),
        Gap(3.33),
        Text(
          words,
          style: GoogleFonts.montserrat(
            fontSize: 9,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
