import 'package:flutter/material.dart';
import 'package:fola_app/modules/authentication/views/card%20tabs/physical_card.dart';
import 'package:fola_app/modules/authentication/views/card%20tabs/virtual_card.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  late TabController controller;
  final tablist = ["Virtual Card", "Physical Card"];
  @override
  void initState() {
    controller = TabController(length: tablist.length, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            controller: controller,
            tabs: List.generate(tablist.length, (index) {
              final list = tablist[index];
              return Tab(text: list);
            }),
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [VirtualCard(), PhysicalCard()],
            ),
          ),
        ],
      ),
    );
  }
}

// replace the texts with stf

void showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder:
        (_) => Builder(
          builder: (modalContext) => ShowModal(modalContext: modalContext),
        ),
  );
}

class ShowModal extends StatefulWidget {
  final BuildContext modalContext;
  const ShowModal({super.key, required this.modalContext});

  @override
  State<ShowModal> createState() => _ShowModalState();
}

class _ShowModalState extends State<ShowModal> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [Text("My Modal Bottom Sheet")]));
  }
}
