import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:crdb_simbanking/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:crdb_simbanking/data/data.dart';
import 'package:crdb_simbanking/pages/maelezo.dart';

class TumaPesaScreen extends StatefulWidget {
  const TumaPesaScreen({super.key});

  @override
  State<TumaPesaScreen> createState() => _TumaPesaScreenState();
}

class _TumaPesaScreenState extends State<TumaPesaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8).r,
        child: Column(
          children: [
            SizedBox(height: 5.h),
            const SearchBar(title: "Tafuta mpokeaji"),
            SizedBox(height: 18.h),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('TUMA PESA'),
                  SizedBox(height: 10.h),
                  ServiceCard(
                    itemslength: tumapesa.length,
                    itemslistIcon: tumapesa.map((e) => e['icon']).toList(),
                    itemslistName: tumapesa.map((e) => e['name']).toList(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.star_outline,
                        size: 40.sp, color: Colors.deepOrange),
                    SizedBox(height: 10.h),
                    Text(
                      'Hakuna vipendwayo',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          letterSpacing: 0.8,
                          color: Colors.deepOrange),
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      'Mwishoni mwa muamala wako unaweza kumuongeza mpokeaji kwenye vipendavyo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          letterSpacing: 0.5,
                          color: Colors.deepOrange),
                    ),
                  ],
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final String title;
  const SearchBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 7,
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
                hintText: title,
              ),
            ),
          ),
        ),
        const Spacer(flex: 1),
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 35.h,
              width: 30.w,
              child:
                  NeumorphicWidget(content: const Icon(Icons.search_outlined)),
            ))
      ],
    );
  }
}
