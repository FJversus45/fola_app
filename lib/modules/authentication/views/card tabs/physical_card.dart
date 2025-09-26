import 'package:flutter/material.dart';
import 'package:fola_app/modules/authentication/widgets/better_check_box.dart';
import 'package:fola_app/modules/authentication/widgets/card_perks.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PhysicalCard extends StatefulWidget {
  const PhysicalCard({super.key});

  @override
  State<PhysicalCard> createState() => _PhysicalCardState();
}

class _PhysicalCardState extends State<PhysicalCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(12),
          Image(image: AssetImage('assets/physicalCard.png')),
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
            heading: 'No Cost of Use and Application',
            description:
                'The ATM withdrawal and maintenance costs are completely free',
          ),
          CardPerks(
            image: 'assets/discount.png',
            heading: 'Get 10% off Daily',
            description:
                'You can get exciting discounts when you use your VentriPay Master Card.',
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
              "CLICK HERE FOR DELIVERY TO YOUR HOME",
              style: GoogleFonts.montserrat(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 45),
              backgroundColor: Colors.white,
              overlayColor: Color(0xFF003366),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            child: Text(
              "PICK UP FROM LOCAL MERCHANTS NEAR YOU",
              style: GoogleFonts.montserrat(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Gap(10),
        ],
      ),
    );
  }
}
