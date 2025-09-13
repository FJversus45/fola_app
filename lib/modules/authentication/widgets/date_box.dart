import 'package:flutter/material.dart';
import 'package:fola_app/core/shared_widgets/custom_text_field.dart';

class DateBox extends StatelessWidget {
  const DateBox({super.key, required this.measurement});

  @override
  final String measurement;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Color(0xFFF8F8F8),
          border: Border.all(
            width: 1.2,
            color: Color.fromARGB(223, 248, 248, 248),
          ),
        ),
        child: Expanded(child: CustomTextField(labelText: measurement)),
      ),
    );
  }
}
