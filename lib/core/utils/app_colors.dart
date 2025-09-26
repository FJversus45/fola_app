import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Core Colors
  static Color primary =
      const Color(0xFFCE890E); // Metallic gold, main app color
  static Color secondary = const Color(0xFF151512);
  static Color greyText = const Color(0xFF575773);
  static Color blueText = const Color(0xFF4a4a68);
  static Color borderColor = const Color(0xFFecf1f4);
  static Color light = const Color(0xFFF6F6F6);
  static Color gold1 = const Color(0xFFA66F0C);
  static Color gold2 = const Color(0xFFC8850F);
  static Color grey500 = const Color(0xFF262626);
  static Color grey400 = const Color(0xFF5B5B5B);
  static Color textDark = const Color(0xFF201E1F);

  static Color white700 = const Color(0xFF525252);
  static Color textFaith = const Color(0xFF656565);
  static Color textFaith2 = const Color(0xFF464646);

  static Color darkPrimary =
      const Color(0xFFA68B2C); // Darker gold shade for depth
  static Color black1 = const Color(0xFF000000); // Pure black for high contrast
  static Color black =
      const Color(0xFF000000); // Chosen shade of black for backgrounds

  // Grays for Subtle Elements
  static Color grey1 = const Color(
      0xFF333333); // Dark gray for surfaces or secondary backgrounds
  static Color grey2 =
      const Color(0xFF555555); // Medium gray for borders or idle states
  static Color grey3 =
      const Color(0xFF777777); // Lighter gray for inactive text
  static Color grey4 =
      const Color(0xFF999999); // Light gray for disabled elements

  // State Colors
  static Color success =
      const Color(0xFF07C698); // Green, complements gold for positive actions
  static Color error =
      const Color(0xFFDA0D16); // Red, standard error color, contrasts well
  static Color warning =
      const Color(0xFFE2B93B); // Golden yellow, aligns with primary
  static Color info = const Color(0xFFd2e9ff); // Light blue, subtle and neutral

  // UI-Specific Colors
  static Color cursorColor =
      const Color(0xFFD4AF37); // Metallic gold, main app color
  static Color dropdownSelectionColor =
      const Color(0xFFD4AF37); // Gold for highlights
  static Color transparentPrimary =
      const Color(0xFFFFF8E1); // Light gold for subtle backgrounds
  static Color transparentBlack =
      Color.fromRGBO(15, 16, 23, 0.60); // Semi-transparent black for overlays
  static Color white = const Color(0xFFFFFFFF); // Pure white for text
  static Color red = const Color(0xFFFC0000); // Bright red for emphasis

  // Backgrounds and Surfaces
  static Color appBlack = const Color(0xFF1E1E1E); // Main background color
  static Color plansBackground =
      const Color(0xFF1E1E1E); // Matches appBlack for consistency
  static Color fillColor =
      const Color(0xFF2A2A2A); // Slightly lighter for cards or surfaces
  static Color accent =
      const Color(0xFFFFF2AF); // Slightly lighter for cards or surfaces

  // Text Colors

  static Color textColor = const Color(0xFF262626);
  static Color subtletextColor = const Color(0xFF5B5B5B);
  static Color headingBlack =
      const Color(0xFFD4AF37); // Gold for Heading 1 and Heading 2
  static Color inactiveTextColor =
      const Color(0xFF777777); // Gray for inactive or placeholder text
  static Color transparentText =
      const Color(0x80FFFFFF); // White with 50% opacity for "transparent" text

  // Input Fields and Borders
  static Color inputFieldGrey =
      const Color(0xFF333333); // Dark gray for input backgrounds
  static Color textFieldBorder =
      const Color(0xFF555555); // Medium gray for borders
  static Color idleState =
      const Color(0xFF555555); // Gray for idle or unselected states

  // Transparent State Backgrounds
  static Color transparentGreen =
      const Color(0xFFE2F9EB); // Light green for success backgrounds
  static Color transparentRed =
      const Color(0xFFFAE4E4); // Light red for error backgrounds
}
