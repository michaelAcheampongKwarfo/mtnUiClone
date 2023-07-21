import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color? color;
  final FontWeight? fontWeight;
  const AppText(
      {required this.text,
      required this.fontsize,
      this.color,
      this.fontWeight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: color ?? blackColor,
        fontWeight: fontWeight ?? fontWeight,
        fontFamily: 'Times New Roman',
      ),
    );
  }
}
