import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardBottomNavigationBar extends StatelessWidget {
  const DashboardBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
