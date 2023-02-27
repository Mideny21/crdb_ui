import 'package:crdb_simbanking/pages/maelezo.dart';
import 'package:crdb_simbanking/widgets/custom_button.dart';
import 'package:crdb_simbanking/widgets/tabs_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToaPesaScreen extends StatefulWidget {
  const ToaPesaScreen({super.key});

  @override
  State<ToaPesaScreen> createState() => _ToaPesaScreenState();
}

class _ToaPesaScreenState extends State<ToaPesaScreen>
    with SingleTickerProviderStateMixin {
  final _pageController = PageController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8).r,
        child: Column(
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
                CallCenter()
              ],
            ),
            const SizedBox(height: 18),
            TabsSection(
              controller: _tabController,
              tabs: ['Wakala/Tawi', 'ATM'],
            ),
            SizedBox(height: 20.h),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(Icons.info),
                  Expanded(
                    child: Text(
                      "Tembelea Wakala wa CRDB au mhudumu wa tawi kutoa pesa bila kadi ya ATM",
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 5).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Toa Kutoka"),
                    SizedBox(height: 8.h),
                    SizedBox(
                      height: 45.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            bottom: 0,
                            top: 0,
                            child: SizedBox(
                                width: 20.w,
                                child: const ColoredBox(color: Colors.green)),
                          ),
                          Container(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: '0000087878989',
                                  suffixIcon:
                                      Icon(Icons.arrow_drop_down, size: 20.sp)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 5).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Ingiza Kiasi"),
                    SizedBox(height: 8.h),
                    SizedBox(
                      height: 45.h,
                      child: TextField(
                          decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        fillColor: Colors.grey.withOpacity(0.8),
                        filled: true,
                        labelText: '',
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 3.h,
              width: 80.w,
              color: Colors.green,
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Maelezo ya muamala (si lazima)"),
                  Row(
                    children: [
                      Icon(Icons.add),
                      Text("Ongeza maelezo"),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomButton(
                      tap: () {}, text: 'ENDELEA', textColor: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
