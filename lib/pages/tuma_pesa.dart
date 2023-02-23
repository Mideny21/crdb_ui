import 'package:crdb_simbanking/data/data.dart';
import 'package:crdb_simbanking/pages/maelezo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TumaPesaScreen extends StatefulWidget {
  const TumaPesaScreen({super.key});

  @override
  State<TumaPesaScreen> createState() => _TumaPesaScreenState();
}

class _TumaPesaScreenState extends State<TumaPesaScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10).r,
      child: ListView(
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: 40.h,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0).r,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20).r,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Tafuta mpokeaji',
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 40.h,
                    width: 30.w,
                    child: Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.circle(),
                            depth: 4,
                            intensity: 0.75,
                            lightSource: LightSource.topLeft,
                            color: Colors.white54),
                        child: const Icon(Icons.search_outlined)),
                  ))
            ],
          ),
          SizedBox(height: 20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('TUMA PESA'),
              SizedBox(height: 20.h),
              ServiceCard(
                itemslength: akaunt.length,
                itemslistIcon: akaunt.map((e) => e['icon']).toList(),
                itemslistName: akaunt.map((e) => e['name']).toList(),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Text('Hakuna vipendwayo'),
                Text('Hakuna vipendwayo'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
