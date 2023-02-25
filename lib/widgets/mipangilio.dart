import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MipangilioUI extends StatelessWidget {
  final String title;
  final List<MipangilioTile> tile;
  const MipangilioUI({
    Key? key,
    this.title = '',
    required this.tile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.055,
              width: MediaQuery.of(context).size.width * 1.0,
              color: Colors.transparent,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              )),
          ...tile
        ]);
  }
}

class MipangilioTile extends StatelessWidget {
  final IconData icon;
  final bool isIcon;
  final String tileTitle;
  final Color titleColor;

  const MipangilioTile({
    Key? key,
    required this.icon,
    this.isIcon = true,
    required this.tileTitle,
    this.titleColor = Colors.black87,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const bool isOn = true;
    return Padding(
      padding: const EdgeInsets.all(3).r,
      child: ListTile(
        tileColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        leading: Icon(icon),
        title: Text(
          tileTitle,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: titleColor),
        ),
        trailing: isIcon
            ? const Icon(Icons.arrow_right, color: Colors.grey)
            : const Switch(
                activeColor: Colors.green, value: isOn, onChanged: null),
      ),
    );
  }
}
