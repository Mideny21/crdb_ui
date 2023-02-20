import 'package:flutter/material.dart';

class MalipoScreen extends StatefulWidget {
  const MalipoScreen({super.key});

  @override
  State<MalipoScreen> createState() => _MalipoScreenState();
}

class _MalipoScreenState extends State<MalipoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Malipo"),
      ),
    );
  }
}
