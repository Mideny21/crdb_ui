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
              CallCenter()
            ],
          ),
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

class CallCenter extends StatelessWidget {
  const CallCenter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 40.w,
      child: const NeumorphicWidget(
          content: Icon(
        Icons.message_outlined,
      )),
    );
  }
}

class PromoBox extends StatelessWidget {
  final String heading;
  final String imageUrl;
  final String title;
  final String subtitle;
  const PromoBox({
    Key? key,
    required this.heading,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          heading,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0).r,
          child: NeumorphicWidget(
            radius: 4,
            content: Container(
              height: 80.h,
              width: MediaQuery.of(context).size.width - 50.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1).r,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0).r,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
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
          ),
        ),
      ],
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
        CircleCard(
          height: 155.h,
          childs: [
            const Text('00000444055330'),
            SizedBox(height: 5.h),
            const Text("Halisi"),
            SizedBox(height: 5.h),
            Text(
              "*************",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 13.sp),
            ),
            const Text("Inapatikana"),
            SizedBox(height: 5.h),
            Text(
              "*************",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 13.sp),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        ServiceCard(
          itemslength: akaunt.length,
          itemslistIcon: akaunt.map((e) => e['icon']).toList(),
          itemslistName: akaunt.map((e) => e['name']).toList(),
        ),
        SizedBox(height: 30.h),
        SizedBox(
          height: 140.h,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: ads.length,
              itemBuilder: (context, index) {
                return PromoBox(
                  heading: ads[index]['heading'],
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

class MikopoView extends StatelessWidget {
  const MikopoView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleCard(
          height: 180.h,
          showOverlays: false,
          color: Colors.white,
          childs: [
            Text(
              "Get instant loan Advance",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 13.sp),
            ),
            SizedBox(height: 10.h),
            Text(
              "dsdkslnfnvkfsnslfnkvnfklnvkfssvssslsdk",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp),
            )
          ],
        ),
        SizedBox(height: 30.h),
        ServiceCard(
          itemslength: akaunt.length,
          itemslistIcon: akaunt.map((e) => e['icon']).toList(),
          itemslistName: akaunt.map((e) => e['name']).toList(),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 140.h,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: ads.length,
              itemBuilder: (context, index) {
                return PromoBox(
                  heading: ads[index]['heading'],
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

class CircleCard extends StatelessWidget {
  final Color color;
  final bool showOverlays;
  final List<Widget> childs;
  final double height;
  const CircleCard({
    Key? key,
    this.color = Colors.green,
    this.showOverlays = true,
    required this.childs,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: height,
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
              border: Border.all(color: color, width: 5.w),
              shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(8.0).r,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: childs),
            ),
          ),
        ),
        showOverlays
            ? Positioned(
                bottom: -8,
                right: 5,
                child: SizedBox(
                  height: 45.h,
                  width: 45.w,
                  child:
                      const NeumorphicWidget(content: Icon(Icons.visibility)),
                ))
            : Container()
      ],
    );
  }
}

class KadiView extends StatelessWidget {
  const KadiView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 170.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/crdb.png'))),
            ),
            Positioned(
                bottom: -30,
                right: 60,
                child: SizedBox(
                  height: 40.h,
                  width: 40.w,
                  child: NeumorphicWidget(
                      color: Colors.grey.shade300,
                      content: Icon(Icons.visibility)),
                )),
            Positioned(
                bottom: -30,
                right: 130,
                child: SizedBox(
                  height: 40.h,
                  width: 40.w,
                  child: NeumorphicWidget(
                      color: Colors.grey.shade300,
                      content: Icon(Icons.settings_outlined)),
                ))
          ],
        ),
        SizedBox(height: 50.h),
        ServiceCard(
          itemslength: kadi.length,
          itemslistIcon: kadi.map((e) => e['icon']).toList(),
          itemslistName: kadi.map((e) => e['name']).toList(),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 130.h,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: ads.length,
              itemBuilder: (context, index) {
                return PromoBox(
                  heading: ads[index]['heading'],
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
                child: NeumorphicWidget(
                  content: itemslistIcon![index],
                ),
              ),
              const SizedBox(height: 8),
              Text(itemslistName![index],
                  textAlign: TextAlign.center, softWrap: true)
            ],
          );
        }));
  }
}
