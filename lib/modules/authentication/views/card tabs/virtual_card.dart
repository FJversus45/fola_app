import 'package:flutter/material.dart';
import 'package:fola_app/modules/authentication/widgets/better_check_box.dart';
import 'package:fola_app/modules/authentication/widgets/card_perks.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class VirtualCard extends StatefulWidget {
  const VirtualCard({super.key});

  @override
  State<VirtualCard> createState() => _VirtualCardState();
}

class _VirtualCardState extends State<VirtualCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(12),
          Center(child: Image(image: AssetImage("assets/virtualCard.png"))),
          Gap(16),
          SizedBox(
            width: 214,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "VentriPay Card",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Gap(2),
                Text(
                  "Built for your Digital Life",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF003366),
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
          Gap(14),
          CardPerks(
            image: 'assets/bolt.png',
            heading: "Quick Access",
            description: "Apply and activate instantly",
          ),
          CardPerks(
            image: "assets/globe.png",
            heading: 'Shop Globally',
            description:
                "Utilize your VentriPay Virtual Card to make purchases online from any location Master cards are accepted",
          ),
          CardPerks(
            image: "assets/pie.png",
            heading: "Budget Effectively",
            description:
                'Restrict your spending to the amount that is uploaded to your card',
          ),
          CardPerks(
            image: "assets/safe.png",
            heading: "Safety",
            description: "Not passing hands in person. No chance of loss",
          ),
          Gap(12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BetterCheckBox(),
              Gap(10),
              RichText(
                text: TextSpan(
                  text: "Click the button to accept ",
                  style: GoogleFonts.montserrat(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF003366),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(18),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 45),
              backgroundColor: Color(0xFF557799),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            child: Text(
              "GET IT NOW",
              style: GoogleFonts.montserrat(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
