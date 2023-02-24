import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback tap;
  final String text;
  final bool leading;
  final double height;
  final double fontSize;
  final Color textColor;

  final Color color;
  const CustomButton(
      {Key? key,
      required this.tap,
      required this.text,
      this.leading = false,
      this.height = 48,
      this.fontSize = 16,
      this.textColor = Colors.blueGrey,
      this.color = Colors.green})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: color,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 10),
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        onPressed: tap,
        label: Text(text,
            style: TextStyle(
                fontSize: fontSize,
                color: textColor,
                // fontWeight: FontWeight.bold,
                letterSpacing: 0.8)),
        icon: leading
            ? Icon(Icons.account_balance_wallet_outlined,
                color: Colors.green, size: 33)
            : Container(),
      ),
    );
  }
}
