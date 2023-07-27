import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class MomoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback callback;
  const MomoCard(
      {super.key,
      required this.text,
      required this.icon,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.height * 0.16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: whiteColor,
        ),
        child: Center(
          child: Column(
            children: [
              Icon(
                icon,
                size: 50.0,
                color: blueGreyColor,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              AppText(
                text: text,
                fontsize: 14.0,
                color: blueGreyColor,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
