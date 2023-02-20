import 'package:flutter/material.dart';

class TabsSection extends StatelessWidget {
  final TabController? controller;
  final String firstab;
  final String secondtab;
  final String thirdtab;

  const TabsSection({
    Key? key,
    this.controller,
    required this.firstab,
    required this.secondtab,
    required this.thirdtab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TabBar(
          controller: controller,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.green),
          labelColor: Colors.white,
          labelStyle: TextStyle(
              fontWeight: FontWeight.bold, letterSpacing: 0.5, fontSize: 15),
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(text: firstab),
            Tab(text: secondtab),
            Tab(text: thirdtab),
          ],
        ),
      ),
    );
  }
}
