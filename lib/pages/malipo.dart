import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:crdb_simbanking/data/data.dart';
import 'package:crdb_simbanking/pages/maelezo.dart';
import 'package:crdb_simbanking/pages/tuma_pesa.dart';

class MalipoScreen extends StatefulWidget {
  const MalipoScreen({super.key});

  @override
  State<MalipoScreen> createState() => _MalipoScreenState();
}

class _MalipoScreenState extends State<MalipoScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8).r,
      child: ListView(
        children: [
          const SearchBar(title: "Tafuta huduma"),
          DetailsRowPattern(
              leftitle: "MAKUNDI YA JUU", rightitle: "TAZAMA VYOTE"),
          SizedBox(height: 20.h),
          ServiceCard(
            itemslength: malipo.length,
            itemslistIcon: malipo.map((e) => e['icon']).toList(),
            itemslistName: malipo.map((e) => e['name']).toList(),
          ),
          DetailsRowPattern(leftitle: "KWA AJILI YAKO", rightitle: "ZAIDI"),
        ],
      ),
    );
  }
}

class DetailsRowPattern extends StatelessWidget {
  final String leftitle;
  final String rightitle;
  const DetailsRowPattern({
    Key? key,
    required this.leftitle,
    required this.rightitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8).r,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(leftitle),
        Row(
          children: [Text(rightitle), Icon(Icons.arrow_right)],
        )
      ]),
    );
  }
}
