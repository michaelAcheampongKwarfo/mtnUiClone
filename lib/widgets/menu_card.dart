import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class MenuCard extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback onTap;
  const MenuCard(
      {super.key,
      required this.iconData,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            iconData,
            size: 35.0,
            color: amberColor,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          AppText(
            text: text,
            fontsize: 18.0,
          ),
        ],
      ),
    );
  }
}
