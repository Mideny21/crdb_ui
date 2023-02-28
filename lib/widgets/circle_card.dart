import 'package:crdb_simbanking/utils/colors.dart';
import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleCard extends StatelessWidget {
  final Color color;
  final bool showOverlays;
  final List<Widget> childs;
  final double height;
  const CircleCard({
    Key? key,
    this.color = AppColors.greenColor,
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
              color: Colors.grey.shade300,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 8,
                  blurRadius: 8,
                  offset: Offset(0, 5),
                ),
              ],
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
