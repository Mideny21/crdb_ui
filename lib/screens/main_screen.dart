import 'package:crdb_simbanking/pages/maelezo.dart';
import 'package:crdb_simbanking/pages/malipo.dart';
import 'package:crdb_simbanking/pages/mipangilio.dart';
import 'package:crdb_simbanking/pages/toa_pesa.dart';
import 'package:crdb_simbanking/pages/tuma_pesa.dart';
import 'package:crdb_simbanking/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainsScreen extends StatefulWidget {
  const MainsScreen({super.key});

  @override
  State<MainsScreen> createState() => _MainsScreenState();
}

class _MainsScreenState extends State<MainsScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> pages = [
    MaelezoScreen(),
    TumaPesaScreen(),
    ToaPesaScreen(),
    MalipoScreen(),
    MipangilioScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(child: pages.elementAt(_selectedIndex)),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8).r,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.folder_copy_outlined,
                size: 24.sp,
              ),
              label: 'Maelezo',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.swap_horiz_outlined,
                size: 24.sp,
              ),
              label: 'Tuma Pesa',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.card_membership_outlined,
                size: 24.sp,
              ),
              label: 'Toa Pesa',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.business_center_outlined,
                size: 24.sp,
              ),
              label: 'Malipo',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                size: 24.sp,
              ),
              label: 'Mipangilio',
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
          iconSize: 35,
          elevation: 0,
          selectedFontSize: 15.0,
          unselectedFontSize: 15.0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(fontSize: 12.sp, color: Colors.white),
          backgroundColor: Colors.transparent,
          selectedIconTheme: const IconThemeData(color: Colors.green),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          selectedLabelStyle: TextStyle(fontSize: 12.sp, color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          unselectedItemColor: Colors.black,
        ),
      ),
    );
  }
}
