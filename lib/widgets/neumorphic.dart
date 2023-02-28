import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicWidget extends StatelessWidget {
  final Widget content;
  final Color color;
  final double radius;
  const NeumorphicWidget({
    Key? key,
    required this.content,
    this.color = Colors.white,
    this.radius = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.convex,
            boxShape:
                NeumorphicBoxShape.roundRect(BorderRadius.circular(radius)),
            depth: 5,
            // intensity: 0.,
            lightSource: LightSource.left,
            color: color),
        child: content);
  }
}
