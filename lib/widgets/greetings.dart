import 'package:crdb_simbanking/widgets/call_center.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopGreetings extends StatelessWidget {
  const TopGreetings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3.w),
                  shape: BoxShape.circle),
              child: Icon(Icons.person, size: 37.sp, color: Colors.grey),
            ),
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
    );
  }
}
