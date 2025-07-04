import 'package:flutter/material.dart';
import 'package:fola_app/extension2.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Text(
                    "Dashboard",
                    style: GoogleFonts.montserrat(
                      fontSize: 19.74,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Gap(context.getWidth(0.2)),
                Image(image: AssetImage("assets/audio.png")),
                Gap(context.getWidth(0.07)),
                Image(image: AssetImage("assets/notification.png")),
              ],
            ),
            Gap(context.getHeight(0.06)),
            Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: Container(
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
                              decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                image: DecorationImage(
                                  image: AssetImage("assets/person.png"),
                                ),
                              ),
                              width: 45,
                              height: 45,
                            ),
                            Gap(8),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
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
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(6.58),
                              ),
                              color: Color(0xFFCCD6E0),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage("assets/check.png"),
                                        ),
                                        Gap(2),
                                        Text(
                                          "Available Balance",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 6.5,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Gap(3),
                                        Image(
                                          image: AssetImage("assets/eye.png"),
                                        ),
                                        Gap(35),
                                        Text(
                                          "Transaction History >",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 6.5,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(15),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Image(
                                                  image: AssetImage(
                                                    'assets/small.png',
                                                  ),
                                                ),
                                                Gap(3),
                                                Text(
                                                  "NGN",
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color(0xFF707070),
                                                  ),
                                                ),
                                                Gap(26),
                                                Image(
                                                  image: AssetImage(
                                                    'assets/usd1.png',
                                                  ),
                                                ),
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
                                          ],
                                        ),
                                        Gap(4),
                                      ],
                                    ),
                                    Gap(2),
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            'assets/nairaNo.png',
                                          ),
                                        ),
                                        Gap(6),
                                        Divider(thickness: 1),
                                        Gap(6),
                                        Image(
                                          image: AssetImage(
                                            "assets/dollaNo.png",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Gap(5),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image(
                                      image: AssetImage('assets/downarrow.png'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Gap(context.getHeight(0.03)),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13.16)),
                color: Color(0xFFF2F2F2),
              ),
              child: Row(
                children: [
                  Column(
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
                  Gap(40),
                  InkWell(
                    child: Image(
                      alignment: Alignment.bottomRight,
                      image: AssetImage('assets/begin.png'),
                    ),
                  ),
                ],
              ),
            ),
            Gap(context.getHeight(0.025)),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13.16)),
                color: Color(0xFFF2F2F2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/merca.png"),
                                    ),
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
                                Gap(5),
                                Image(image: AssetImage("assets/eyeing.png")),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/HOUSE.png"),
                                    ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
