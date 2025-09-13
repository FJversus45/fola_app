import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        SizedBox(),
        Text(
          "Dashboard",
          style: GoogleFonts.montserrat(
            fontSize: 19.74,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),

        Row(
          children: [
            Image(image: AssetImage("assets/audio.png")),
            Gap(8),
            Stack(
              children: [
                Image(image: AssetImage("assets/notification.png")),
                Positioned(
                  top: 0,
                  right: 2,
                  child: Container(
                    color: Color(0xffFD0A0A),
                    width: 5,
                    height: 5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
