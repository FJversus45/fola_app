import 'package:flutter/material.dart';
import 'package:fola_app/modules/authentication/views/signup/country_page.dart';
import 'package:fola_app/core/utils/extension2.dart';
import 'package:fola_app/modules/onboarding/models/onboarding_data.dart';
import 'package:fola_app/modules/onboarding/widgets/onboarding_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final pageController = PageController();
  final List<OnboardingData> onBoardingData = [
    OnboardingData(
      "WELCOME TO VENTRIPAY!",
      "Effortlessly send money across Africa and beyond, with security and speed you can trust.",
      "assets/lumberjack.png",
    ),
    OnboardingData(
      "Seamless Payments, Anytime, Anywhere",
      "Whether it’s paying bills, creating virtual cards, or sending money, VentriPay makes it fast and easy.",
      "assets/goldenGlobe.png",
    ),
    OnboardingData(
      "Your Trusted Partner in Secure Transactions",
      "Join VentriPay today and experience affordable, transparent, and reliable financial services for all your needs.",
      "assets/lock.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CountryPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFF9F9F9),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Text(
                        "SKIP",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Gap(8),
                      Icon(Icons.arrow_forward, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: onBoardingData.length,
                itemBuilder: (context, index) {
                  return OnboardingWidget(
                    title: onBoardingData[index].title,
                    description: onBoardingData[index].description,
                    image: onBoardingData[index].image,
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: onBoardingData.length,
              effect: ExpandingDotsEffect(
                dotHeight: 8,
                dotWidth: 12,
                activeDotColor: Color(0xFF003366),
                dotColor: Color(0xFFCCD6E0),
              ),
            ),
            Gap(context.getHeight(0.065)),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (pageController.page!.toInt() <
                      onBoardingData.length - 1) {
                    pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CountryPage()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF003366),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Next",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Gap(context.getHeight(0.035)),
          ],
        ),
      ),
    );
  }
}

// assignment:
// learn about expanded and how to use flex in expanded
// make it so that when a user presses the next button it goes to the next page 
// and when it is at the end it should navigete to the next screen.

// new assignment:
// change onBoardingData to a class and use it
// find out the package which allows you to swap between different country codes and country flags
// use pub.dev to learn abt the package

// https://flagcdn.com/w40/us.png
// https://restcountries.com/v3.1/all?fields=name,cca2,idd