import 'package:crdb_simbanking/widgets/neumorphic.dart';
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
        padding: const EdgeInsets.all(8.0).r,
        child: Column(
          children: [
            const SearchBar(title: "Tafuta mpokeaji"),
            SizedBox(height: 20.h),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('TUMA PESA'),
                  SizedBox(height: 15.h),
                  ServiceCard(
                    itemslength: akaunt.length,
                    itemslistIcon: akaunt.map((e) => e['icon']).toList(),
                    itemslistName: akaunt.map((e) => e['name']).toList(),
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
                    Icon(Icons.star),
                    SizedBox(height: 10.h),
                    Text('Hakuna vipendwayo'),
                    SizedBox(height: 10.h),
                    Text(
                      'Mwishoni mwa muamala wako unaweza kumuongeza mpokeaji kwenye vipendavyo',
                      textAlign: TextAlign.center,
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
