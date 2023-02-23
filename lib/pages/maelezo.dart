import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:crdb_simbanking/data/data.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
      child: ListView(
        children: [
          const SizedBox(height: 5),
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
              SizedBox(
                height: 55,
                width: 55,
                child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.convex,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(20)),
                        depth: 4,
                        intensity: 0.75,
                        lightSource: LightSource.topLeft,
                        color: Color.fromRGBO(255, 255, 255, 0.303)),
                    child: const Icon(
                      Icons.message_outlined,
                    )),
              )
            ],
          ),
          const SizedBox(height: 18),
          TabsSection(
              controller: _tabController,
              firstab: 'AKAUNTI',
              secondtab: 'KADI',
              thirdtab: 'MIKOPO'),
          SizedBox(height: 28.h),
          SizedBox(
            height: 500.h,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: [
                FirstView(),
                FirstView(),
                FirstView(),
              ],
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}

class PromoBox extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  const PromoBox({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8).r,
      child: Material(
        elevation: 8,
        child: Container(
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1).r,
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Expanded(
              flex: 1,
              child: Image.asset(imageUrl),
            ),
            SizedBox(width: 8.w),
            Expanded(
              flex: 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.h),
                    Text(subtitle)
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}

class FirstView extends StatelessWidget {
  const FirstView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200.h,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 3),
                  shape: BoxShape.circle),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hlw World"),
                      Text("Hlw World"),
                    ]),
              ),
            ),
            Positioned(
                bottom: 5,
                right: 0,
                child: SizedBox(
                  height: 55,
                  width: 55,
                  child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20)),
                          depth: 4,
                          intensity: 0.75,
                          lightSource: LightSource.topLeft,
                          color: Color.fromRGBO(255, 255, 255, 0.303)),
                      child: const Icon(
                        Icons.message_outlined,
                      )),
                ))
          ],
        ),
        SizedBox(height: 30.h),
        ServiceCard(
          itemslength: akaunt.length,
          itemslistIcon: akaunt.map((e) => e['icon']).toList(),
          itemslistName: akaunt.map((e) => e['name']).toList(),
        ),
        SizedBox(
          height: 90.h,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: ads.length,
              itemBuilder: (context, index) {
                return PromoBox(
                  imageUrl: ads[index]['image'],
                  title: ads[index]['title'],
                  subtitle: ads[index]['subtitle'],
                );
              }),
        ),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final int itemslength;
  final List? itemslistIcon;
  final List? itemslistName;
  const ServiceCard({
    Key? key,
    required this.itemslength,
    this.itemslistIcon,
    this.itemslistName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemslength,
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
                        depth: 5,
                        // intensity: 0.,
                        lightSource: LightSource.topLeft,
                        color: Colors.white),
                    child: itemslistIcon![index]),
              ),
              const SizedBox(height: 8),
              Text(itemslistName![index],
                  textAlign: TextAlign.center, softWrap: true)
            ],
          );
        }));
  }
}
