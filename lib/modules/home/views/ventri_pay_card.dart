import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VentriPayCard extends StatefulWidget {
  const VentriPayCard({super.key});

  @override
  State<VentriPayCard> createState() => _VentriPayCardState();
}

class _VentriPayCardState extends State<VentriPayCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "VentriPay Card",
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: GestureDetector(
          child: Icon(Icons.arrow_circle_left_rounded, size: 30),
        ),
        actions: [
          GestureDetector(
            child: Text(
              "Q&A",
              style: GoogleFonts.montserrat(
                color: Color(0xFF003366),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            
          ],
        ),
      ),
    );
  }
}
