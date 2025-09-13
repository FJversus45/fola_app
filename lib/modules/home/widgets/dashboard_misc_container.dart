import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardMiscContainer extends StatelessWidget {
  const DashboardMiscContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13.16)),
        color: Color(0xFFF2F2F2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffB5B5B5), width: 0.71),
                  //boxShadow: [
                  //BoxShadow(
                  //   offset: Offset(0, 2.85),
                  //   blurRadius: 2.85,
                  //   spreadRadius: 0,
                  //   color: Colors.black.withOpacity(0.25),
                  // ),
                  // ],
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/merca.png")),
                        Gap(4),
                        Text(
                          "USD - US Dollar",
                          style: GoogleFonts.montserrat(
                            fontSize: 11.4,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Gap(5),
            Image(image: AssetImage("assets/eyeing.png")),
            Gap(5),
            Center(
              child: Card(
                elevation: 2,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.7)),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(image: AssetImage("assets/HOUSE.png")),
                              Gap(4),
                              Text(
                                "Get Your US Bank Account",
                                style: GoogleFonts.montserrat(
                                  fontSize: 11.4,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Gap(4.5),
                              Icon(Icons.arrow_forward, size: 15),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Gap(12),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image(image: AssetImage('assets/pluws.png')),
                      Gap(4),
                      Text(
                        "Add",
                        style: GoogleFonts.montserrat(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/convert.png')),
                      Gap(4),
                      Text(
                        "Convert",
                        style: GoogleFonts.montserrat(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/arrowed.png')),
                      Gap(4),
                      Text(
                        "Send",
                        style: GoogleFonts.montserrat(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
