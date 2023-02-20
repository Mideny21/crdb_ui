import 'package:crdb_simbanking/widgets/circle_shape.dart';
import 'package:crdb_simbanking/widgets/tabs_section.dart';
import 'package:flutter/material.dart';

class MaelezoScreen extends StatefulWidget {
  const MaelezoScreen({super.key});

  @override
  State<MaelezoScreen> createState() => _MaelezoScreenState();
}

class _MaelezoScreenState extends State<MaelezoScreen>
    with SingleTickerProviderStateMixin {
  final _pageController = PageController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(() {
      if (_tabController.index != _pageController.page!.round()) {
        _pageController.animateToPage(_tabController.index,
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 20, child: Icon(Icons.person)),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Habar Za mchana"),
                      Text("Ndugu Mteja"),
                    ],
                  )
                ],
              ),
              Icon(Icons.message)
            ],
          ),
          SizedBox(height: 10),
          TabsSection(
              controller: _tabController,
              firstab: 'AKAUNTI',
              secondtab: 'KADI',
              thirdtab: 'MIKOPO'),
          const SizedBox(height: 20),
          SizedBox(
            height: 500,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: [
                CheckBalance(
                  children: [
                    Text("Hello"),
                    Text("World"),
                  ],
                ),
                CheckBalance(
                  children: [
                    Text("Hello"),
                    Text("Kadi"),
                  ],
                ),
                CheckBalance(
                  children: [
                    Text("Hello"),
                    Text("Mikopo"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
