import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MipangilioUI extends StatelessWidget {
  final String title;
  final List<MipangilioTile> tile;
  final bool notitle;
  const MipangilioUI({
    Key? key,
    this.title = '',
    required this.tile,
    this.notitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          !notitle
              ? SizedBox(
                  height: 42.h,
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10)
                        .r,
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    ),
                  ))
              : Container(),
          ...tile
        ]);
  }
}

class MipangilioTile extends StatelessWidget {
  final IconData icon;
  final bool isIcon;
  final String tileTitle;
  final Color titleColor;

  const MipangilioTile({
    Key? key,
    required this.icon,
    this.isIcon = true,
    required this.tileTitle,
    this.titleColor = Colors.black87,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5).r,
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(6).r),
            depth: 5,
            // intensity: 0.,
            lightSource: LightSource.top,
            color: Colors.white),
        child: ListTile(
          tileColor: Colors.grey.shade200,
          shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(6)).r),
          leading: Icon(icon, size: 25.sp),
          title: Text(
            tileTitle,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: titleColor),
          ),
          trailing: isIcon
              ? Icon(Icons.arrow_right, color: Colors.grey, size: 24.sp)
              : Switch(
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.white,
                  activeColor: Colors.green,
                  value: false,
                  onChanged: null),
        ),
      ),
    );
  }
}
