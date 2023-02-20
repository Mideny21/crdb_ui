import 'package:crdb_simbanking/pages/maelezo.dart';
import 'package:crdb_simbanking/pages/malipo.dart';
import 'package:crdb_simbanking/pages/mipangilio.dart';
import 'package:crdb_simbanking/pages/toa_pesa.dart';
import 'package:crdb_simbanking/pages/tuma_pesa.dart';
import 'package:flutter/material.dart';

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

  final List<Widget> pages = [
    const MaelezoScreen(),
    const TumaPesaScreen(),
    const ToaPesaScreen(),
    const MalipoScreen(),
    const MipangilioScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: IndexedStack(index: _selectedIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Maelezo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Tuma Pesa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Toa Pesa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Malipo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Mipangilio',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        iconSize: 35,
        selectedFontSize: 15.0,
        unselectedFontSize: 15.0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        backgroundColor: Colors.grey.shade300,
        selectedIconTheme: const IconThemeData(color: Colors.green),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            letterSpacing: 0.8,
            color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
