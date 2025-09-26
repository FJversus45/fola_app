import 'package:flutter/material.dart';
import 'package:fola_app/modules/utils/extension2.dart';
import 'package:fola_app/modules/home/widgets/dashboar_detail_card.dart';
import 'package:fola_app/modules/home/widgets/dashboard_action_container.dart';
import 'package:fola_app/modules/home/widgets/dashboard_bottom_navigation_bar.dart';
import 'package:fola_app/modules/home/widgets/dashboard_header.dart';
import 'package:fola_app/modules/home/widgets/dashboard_id_verification.dart';
import 'package:fola_app/modules/home/widgets/dashboard_misc_container.dart';
import 'package:gap/gap.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            DashboardHeader(),
            Gap(context.getHeight(0.02)),
            DashboarDetailCard(),
            Gap(context.getHeight(0.03)),
            DashboardIdVerification(),
            Gap(context.getHeight(0.025)),
            DashboardMiscContainer(),
            Gap(context.getHeight(0.025)),
            DashboardActionContainer(),
          ],
        ),
      ),
      bottomNavigationBar: DashboardBottomNavigationBar(),
    );
  }
}

// assignment
// make dashboard no more than 70 lines by dividing it up into widgets
