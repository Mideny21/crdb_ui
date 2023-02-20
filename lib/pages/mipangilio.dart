import 'package:flutter/material.dart';

class MipangilioScreen extends StatefulWidget {
  const MipangilioScreen({super.key});

  @override
  State<MipangilioScreen> createState() => _MipangilioScreenState();
}

class _MipangilioScreenState extends State<MipangilioScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Mipangalio"),
      ),
    );
  }
}
