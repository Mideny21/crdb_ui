import 'package:crdb_simbanking/data/data.dart';
import 'package:crdb_simbanking/widgets/circle_shape.dart';
import 'package:crdb_simbanking/widgets/tabs_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
                  const CircleAvatar(radius: 20, child: Icon(Icons.person)),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Habar Za mchana"),
                      Text("Ndugu Mteja"),
                    ],
                  )
                ],
              ),
              const Icon(Icons.message)
            ],
          ),
          const SizedBox(height: 10),
          TabsSection(
              controller: _tabController,
              firstab: 'AKAUNTI',
              secondtab: 'KADI',
              thirdtab: 'MIKOPO'),
          const SizedBox(height: 20),
          SizedBox(
            height: 260,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: const [
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
          GridView.builder(
              itemCount: akaunt.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  mainAxisExtent: 120,
                  crossAxisCount: 4),
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: ((context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 75,
                      width: 75,
                      child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.convex,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(20)),
                              depth: 8,
                              // intensity: 0.,
                              lightSource: LightSource.topLeft,
                              color: Colors.white),
                          child: Icon(Icons.spa_rounded)),
                    ),
                    SizedBox(height: 8),
                    Text(
                      akaunt[index]['name'],
                      textAlign: TextAlign.center,
                      softWrap: true,
                    )
                  ],
                );
              }))
        ],
      ),
    );
  }
}
