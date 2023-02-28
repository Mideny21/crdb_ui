import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:crdb_simbanking/utils/colors.dart';

class CustomCrdbDIvider extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  const CustomCrdbDIvider({
    Key? key,
    this.height,
    this.width,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 6.h,
      width: width ?? 30.w,
      decoration: BoxDecoration(
        color: AppColors.greenColor,
        border: Border.all(color: Colors.white70),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: radius ?? 6,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
