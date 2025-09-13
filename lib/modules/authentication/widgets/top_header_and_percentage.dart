import 'package:flutter/material.dart';
import 'package:fola_app/core/utils/extension2.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TopHeaderAndPercentage extends StatelessWidget {
  const TopHeaderAndPercentage({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),

      decoration: BoxDecoration(color: Color(0xFFF8F8F8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back, size: 16, color: Colors.black),

                  Gap(context.getWidth(0.01)),
                  Text(
                    "Back",
                    style: GoogleFonts.montserrat(
                      color: Color(0xFF000000),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.07,
                    ),
                  ),
                ],
              ),

              Image(image: AssetImage(image)),
            ],
          ),

          Gap(context.getHeight(0.01)),
          Text(
            "Verify Your Identity",
            style: GoogleFonts.montserrat(
              color: Color(0xFF000000),
              fontSize: 15,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.07,
            ),
          ),
        ],
      ),
    );
  }
}
