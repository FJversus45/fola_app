import 'package:flutter/material.dart';
import 'package:fola_app/modules/utils/extension2.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardIdVerification extends StatelessWidget {
  const DashboardIdVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13.16)),
        color: Color(0xFFF2F2F2),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ID VERIFICATION",
                style: GoogleFonts.montserrat(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),
              Gap(4),
              Text(
                "Verify your ID to finish",
                style: GoogleFonts.montserrat(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
              Text(
                "setting up your account",
                style: GoogleFonts.montserrat(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
          Gap(context.getWidth(0.2)),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: InkWell(
              child: Image(
                alignment: Alignment.bottomRight,
                image: AssetImage('assets/begin.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
