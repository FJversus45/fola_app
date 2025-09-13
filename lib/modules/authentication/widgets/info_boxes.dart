import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoBoxes extends StatelessWidget {
  const InfoBoxes({super.key, required this.info, required this.image});

  final String info;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: double.infinity,
              height: 53,

              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(9.86)),
                color: Color(0xFFCCD6E0),
              ),
              child: Row(
                children: [
                  Image(image: AssetImage("assets/$image")),
                  Gap(4),
                  SizedBox(
                    width: 275,
                    child: Text(
                      info,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Gap(8),
      ],
    );
  }
}
