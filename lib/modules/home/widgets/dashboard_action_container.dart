import 'package:flutter/material.dart';
import 'package:fola_app/modules/authentication/widgets/icon_n_words.dart';
import 'package:gap/gap.dart';

class DashboardActionContainer extends StatelessWidget {
  const DashboardActionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13.16)),
        color: Color(0xFFF2F2F2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconNWords(image: 'assets/airtime.png', words: "Airtime"),
              Gap(35),
              IconNWords(image: 'assets/data.png', words: "Data"),
              Gap(35),
              IconNWords(image: 'assets/virtualcards.png', words: "Cards"),
              Gap(35),
              IconNWords(image: 'assets/giftcards.png', words: "Gift Cards"),
            ],
          ),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconNWords(image: 'assets/betting.png', words: "Betting"),
              Gap(35),
              IconNWords(image: 'assets/loan.png', words: "Loan"),
              Gap(35),
              IconNWords(image: 'assets/paybill.png', words: "Pay Bill"),
              Gap(35),
              IconNWords(image: 'assets/invoice.png', words: "Invoice"),
            ],
          ),
        ],
      ),
    );
  }
}
