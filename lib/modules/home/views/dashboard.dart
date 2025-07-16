import 'package:flutter/material.dart';
import 'package:fola_app/core/utils/extension2.dart';
import 'package:fola_app/modules/authentication/widgets/icon_n_words.dart';
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
            ),
            Gap(context.getHeight(0.02)),
            Container(
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
                                    Image(
                                      image: AssetImage("assets/check.png"),
                                    ),

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
                                        Image(
                                          image: AssetImage('assets/small.png'),
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
                                Container(
                                  width: 0.7,
                                  height: 25,
                                  color: Colors.black,
                                ),
                                Gap(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage('assets/usd1.png'),
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
            ),
            Gap(context.getHeight(0.025)),
            Container(
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
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffB5B5B5),
                            width: 0.71,
                          ),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                          Gap(14),
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
                          Gap(14),
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
            ),
            Gap(context.getHeight(0.025)),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13.16)),
                color: Color(0xFFF2F2F2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconNWords(image: 'assets/airtime.png', words: "Airtime"),
                      Gap(15),
                      IconNWords(image: 'assets/data.png', words: "Data"),
                      Gap(15),
                      IconNWords(
                        image: 'assets/virtualcards.png',
                        words: "Cards",
                      ),
                      Gap(15),
                      IconNWords(
                        image: 'assets/giftcards.png',
                        words: "Gift Cards",
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconNWords(image: 'assets/betting.png', words: "Betting"),
                      Gap(15),
                      IconNWords(image: 'assets/loan.png', words: "Loan"),
                      Gap(15),
                      IconNWords(
                        image: 'assets/paybill.png',
                        words: "Pay Bill",
                      ),
                      Gap(15),
                      IconNWords(image: 'assets/invoice.png', words: "Invoice"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF000000),
        selectedLabelStyle: GoogleFonts.montserrat(
          fontSize: 8,
          fontWeight: FontWeight.w500,
          color: Color(0xff003366),
        ),
        unselectedLabelStyle: GoogleFonts.montserrat(
          fontSize: 8,
          fontWeight: FontWeight.w500,
          color: Color(0xff000000),
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,

        items: [
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/home.png')),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/bettercard.png')),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/heart.png')),
            label: 'Frequent Transactions',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/settings.png')),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

// assignment
// make dashboard no more than 70 lines by dividing it up into widgets
