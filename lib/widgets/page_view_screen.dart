import 'package:crdb_simbanking/data/data.dart';
import 'package:crdb_simbanking/widgets/circle_card.dart';
import 'package:crdb_simbanking/widgets/custom_divider.dart';
import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:crdb_simbanking/widgets/promo_box.dart';
import 'package:crdb_simbanking/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstView extends StatelessWidget {
  const FirstView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleCard(
          height: 160.h,
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
        const CustomCrdbDIvider(),
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
        SizedBox(height: 15.h),
        const CustomCrdbDIvider(),
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
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/tembo.png'))),
            ),
            Positioned(
                bottom: -30,
                right: 50,
                child: SizedBox(
                  height: 40.h,
                  width: 40.w,
                  child: NeumorphicWidget(
                      color: Colors.grey.shade300,
                      content: Icon(Icons.visibility)),
                )),
            Positioned(
                bottom: -30,
                right: 120,
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
        const CustomCrdbDIvider(),
        SizedBox(height: 30.h),
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
