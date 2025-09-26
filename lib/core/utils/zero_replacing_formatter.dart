import 'package:flutter/services.dart';

class ThousandsFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // If the text is empty, return as is
    if (newValue.text.isEmpty) {
      return newValue;
    }

    // Remove any non-digit characters (including commas)
    String digitsOnly = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    // Format with commas
    String formatted = _addCommas(digitsOnly);

    // Return new TextEditingValue with formatted text
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(
        offset: formatted.length,
      ),
    );
  }

  String _addCommas(String value) {
    // Convert to int and format
    if (value.isEmpty) return '';

    final int number = int.parse(value);
    // Format number with commas
    return number.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
        );
  }
}
