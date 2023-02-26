import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicWidget extends StatelessWidget {
  final Widget content;
  final Color color;
  const NeumorphicWidget({
    Key? key,
    required this.content,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
            depth: 5,
            // intensity: 0.,
            lightSource: LightSource.top,
            color: color),
        child: content);
  }
}
