import 'package:flutter/material.dart';
import 'package:fola_app/modules/authentication/widgets/info_boxes.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Uses extends StatefulWidget {
  const Uses({super.key});

  @override
  State<Uses> createState() => _UsesState();
}

class _UsesState extends State<Uses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Color(0xffF8F8F8)),
              child: Column(
                children: [
                  Text(
                    "What do you want to use Ventripay for?",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  Gap(8),
                  Text(
                    "Select all use cases that match your want.",
                    style: GoogleFonts.montserrat(
                      color: Color(0xff616060),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Gap(50),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  InfoBoxes(
                    info: "Obtain a virtual card for online purchasing",
                    image: "card.png",
                  ),
                  InfoBoxes(
                    info: "Manage and track my expenses",
                    image: "graph.png",
                  ),
                  InfoBoxes(
                    info: "Generate invoices to accept payments",
                    image: "payed.png",
                  ),
                  InfoBoxes(
                    info: "Open an abroad account to receive payments",
                    image: "bank.png",
                  ),
                  InfoBoxes(
                    info: "Save and keep my money in foreign currencies",
                    image: "sack.png",
                  ),
                  InfoBoxes(info: "Send money abroad", image: "rocket.png"),
                  InfoBoxes(
                    info: "Currencies-based investment",
                    image: "stocks.png",
                  ),
                  Gap(200),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => ()),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 40),
                        backgroundColor: Color(0xff003366),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
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
