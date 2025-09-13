import 'package:flutter/material.dart';

class BetterCheckBox extends StatefulWidget {
  const BetterCheckBox({super.key});

  @override
  State<BetterCheckBox> createState() => _BetterCheckBoxState();
}

class _BetterCheckBoxState extends State<BetterCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: isChecked ? Color(0xFF003366) : Colors.white,
          border: Border.all(
            width: isChecked ? 2 : 0,
            color: Color(0xFF003366),
          ),
        ),
        child: Center(
          child: Icon(
            isChecked ? Icons.check : null,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
