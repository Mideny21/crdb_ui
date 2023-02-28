import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
