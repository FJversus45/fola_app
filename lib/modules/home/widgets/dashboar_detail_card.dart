import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboarDetailCard extends StatelessWidget {
  const DashboarDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13.16)),
        color: Color(0xFF2A5580),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(31),
                ),
                width: 45,
                height: 45,
                child: ClipOval(
                  child: Image(image: AssetImage("assets/person.png")),
                ),
              ),
              Gap(8),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning, Ventripay",
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Gap(8),
                    Text(
                      "Last Login  10/10/2024  18:10",
                      style: GoogleFonts.montserrat(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6.58)),
                  color: Color(0xFFCCD6E0),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage("assets/check.png")),

                            Gap(5),
                            Text(
                              "Available Balance",
                              style: GoogleFonts.montserrat(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            Gap(5),
                            Image(image: AssetImage("assets/eye.png")),
                          ],
                        ),
                        Text(
                          "Transaction History >",
                          style: GoogleFonts.montserrat(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Gap(8),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image(image: AssetImage('assets/small.png')),
                                Gap(3),
                                Text(
                                  "NGN",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF707070),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "₦ 400K",
                              style: GoogleFonts.montserrat(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Gap(10),
                        Container(width: 0.7, height: 25, color: Colors.black),
                        Gap(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image(image: AssetImage('assets/usd1.png')),
                                Gap(3),
                                Text(
                                  "USD",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF707070),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "\$400",
                              style: GoogleFonts.montserrat(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
