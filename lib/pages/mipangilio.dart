import 'package:crdb_simbanking/widgets/mipangilio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MipangilioScreen extends StatefulWidget {
  const MipangilioScreen({super.key});

  @override
  State<MipangilioScreen> createState() => _MipangilioScreenState();
}

class _MipangilioScreenState extends State<MipangilioScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8).r,
      child: ListView(
        children: [
          SizedBox(
            height: 110.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.person),
                ),
                Positioned(
                    bottom: 0,
                    right: 140,
                    child: SizedBox(
                      height: 30.h,
                      width: 30.w,
                      child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.convex,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(20)),
                              depth: 4,
                              intensity: 0.75,
                              lightSource: LightSource.topLeft,
                              color: Colors.white),
                          child: Icon(Icons.person_add, size: 18.sp)),
                    ))
              ],
            ),
          ),
          MipangilioUI(title: "AKAUNTI", tile: [
            MipangilioTile(icon: Icons.person, tileTitle: "Unganisha akaunti"),
            MipangilioTile(icon: Icons.person, tileTitle: "Hakiki taarifa zako")
          ]),
          MipangilioUI(title: "USALAMA", tile: [
            MipangilioTile(icon: Icons.person, tileTitle: "Badili PIN"),
          ]),
          MipangilioUI(title: "MATUMIZI", tile: [
            MipangilioTile(
                isIcon: false,
                icon: Icons.person,
                tileTitle: "Switch to English"),
            MipangilioTile(
                isIcon: false, icon: Icons.person, tileTitle: "Dark mode"),
          ]),
          MipangilioUI(title: "", tile: [
            MipangilioTile(
                icon: Icons.close, tileTitle: "Ondoa usajili wa kifaa"),
          ]),
        ],
      ),
    );
  }
}
