import 'package:flutter/material.dart';
import 'package:fola_app/modules/authentication/views/signup/basic_information.dart';
import 'package:fola_app/modules/authentication/widgets/topHeader.dart';
import 'package:gap/gap.dart' show Gap;
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:fola_app/core/utils/extension2.dart';

// ignore: must_be_immutable
class CountryPage extends StatefulWidget {
  const CountryPage({super.key});

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  String country = "Algeria";
  final countries = [
    "Algeria",
    "Angola",
    "Argentina",
    "Austria",
    "Belgium",
    "Benin",
    "Brazil",
    "Bulgaria",
    "Cameroon",
    "Canada",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Topheader(heading: "Which country do you live in"),
              Gap(context.getHeight(0.04)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Country",
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.07,
                  ),
                ),
              ),
              Gap(context.getHeight(0.01)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Color(0xFFF1F0F0), width: 1),
                ),

                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: country,
                    items:
                        countries
                            .map(
                              (count) => DropdownMenuItem(
                                value: count,
                                child: Text(
                                  count,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.5,
                                    color: Color(0xFF0F1017),
                                  ),
                                ),
                              ),
                            )
                            .toList(),

                    onChanged: (value) {
                      setState(() {
                        country = value!;
                      });
                    },
                  ),
                ),
              ),
              Gap(context.getHeight(0.54)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BasicInformation(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF003366),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text(
                    "Continue",
                    style: GoogleFonts.montserrat(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.07,
                    ),
                  ),
                ),
              ),
              Gap(context.getHeight(0.01)),
              Center(
                child: Text(
                  "Already have an account. Sign in here",
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF000000),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.07,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
