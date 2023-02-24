import 'package:flutter/material.dart';

class TabsSection extends StatelessWidget {
  final TabController? controller;

  final List<String> tabs;

  const TabsSection({
    Key? key,
    this.controller,
    required this.tabs,
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.2),
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 16.0,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 16.0,
                  ),
                ],
                // color: Color(0xFFEFEEEE),
                borderRadius: BorderRadius.circular(25),
                color: Colors.green),
            labelColor: Colors.white,
            labelStyle: TextStyle(
                fontWeight: FontWeight.bold, letterSpacing: 0.5, fontSize: 15),
            unselectedLabelColor: Colors.black,
            tabs: tabs.map((e) {
              return Tab(text: e);
            }).toList()),
      ),
    );
  }
}
