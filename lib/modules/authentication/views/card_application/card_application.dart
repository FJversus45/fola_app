import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fola_app/core/shared_widgets/custom_text_field.dart';
import 'package:fola_app/modules/utils/validators.dart';
import 'package:fola_app/modules/authentication/widgets/e_z_button.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CardApplication extends StatefulWidget {
  const CardApplication({super.key});

  @override
  State<CardApplication> createState() => _CardApplicationState();
}

class _CardApplicationState extends State<CardApplication> {
  DateTime selectedDate = DateTime.now();
  final dateOfBirthController = TextEditingController();
  String gender = "MALE";
  final genders = ["MALE", "FEMALE"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Card Application",
          style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        leading: Image(image: AssetImage("assets/arrowCircle.png")),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(6),
            Text(
              "Personal Information",
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Gap(10),
            CustomTextField(
              labelText: "Last Name",
              validator: Validators.validateString(),
            ),
            Gap(3),
            CustomTextField(
              labelText: "First Name",
              validator: Validators.validateString(),
            ),
            Gap(3),
            CustomTextField(
              labelText: "Middle Name",
              validator: Validators.validateString(),
            ),
            Gap(3),
            CustomTextField(
              labelText: " ",
              validator: Validators.validateString(),
            ),
            Gap(3),
            CustomTextField(
              onTap: () => showDatePicker(context),
              controller: dateOfBirthController,
              labelText: "Date of Birth",
            ),
            Gap(3),
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 0.5, color: Color(0xFFBEBFC5)),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: gender,
                  items:
                      genders
                          .map(
                            (gend) => DropdownMenuItem(
                              value: gend,
                              child: Text(
                                gend,
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
                      gender = value!;
                    });
                  },
                ),
              ),
            ),
            Gap(10),
            Text(
              "Account Details",
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Gap(3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wallet",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Icon(Icons.check, color: Colors.blue),
              ],
            ),
            Gap(30),
            Text(
              "FEE and Charges",
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Issuance Fee",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "0.98 dollars",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Gap(3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Maintenance Fee",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Free",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Gap(20),
            EZButton(
              text: "Verify and make payments",
              navigate: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardApplication()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future showDatePicker(BuildContext context) async {
    DateTime tempDate = selectedDate;
    await showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return SizedBox(
          height: 300,
          child: CupertinoDatePicker(
            onDateTimeChanged: (DateTime newDate) {
              tempDate = newDate;
              setState(() {
                selectedDate = tempDate;
                dateOfBirthController.text = selectedDate.toIso8601String();
              });
            },
            mode: CupertinoDatePickerMode.monthYear,
            initialDateTime: tempDate,
            minimumDate: DateTime.now().subtract(Duration(days: 20000)),
            maximumDate: DateTime(2100),
          ),
        );
      },
    );
  }
}
