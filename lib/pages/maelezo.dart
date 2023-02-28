import 'package:crdb_simbanking/utils/colors.dart';
import 'package:crdb_simbanking/widgets/call_center.dart';
import 'package:crdb_simbanking/widgets/circle_card.dart';
import 'package:crdb_simbanking/widgets/custom_divider.dart';
import 'package:crdb_simbanking/widgets/greetings.dart';
import 'package:crdb_simbanking/widgets/page_view_screen.dart';
import 'package:crdb_simbanking/widgets/promo_box.dart';
import 'package:crdb_simbanking/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:crdb_simbanking/data/data.dart';
import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:crdb_simbanking/widgets/tabs_section.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: ListView(
        children: [
          const SizedBox(height: 5),
          TopGreetings(),
          const SizedBox(height: 18),
          TabsSection(
            controller: _tabController,
            tabs: ['AKAUNTI', 'KADI', 'MIKOPO'],
          ),
          SizedBox(height: 28.h),
          SizedBox(
            height: 500.h,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: [
                FirstView(),
                KadiView(),
                MikopoView(),
              ],
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}
