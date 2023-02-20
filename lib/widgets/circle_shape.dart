import 'package:flutter/material.dart';
import 'dart:math' as math;

class CheckBalance extends StatelessWidget {
  final List<Widget> children;

  const CheckBalance({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: CustomPaint(
          painter: CirclePainter(),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    final center = Offset(size.width / 2, 5);
    final radius = size.width * 0.32 - paint.strokeWidth / 2;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
