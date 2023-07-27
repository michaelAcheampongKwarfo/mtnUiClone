import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class BuySendCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData iconData;
  final VoidCallback onTap;
  const BuySendCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.iconData,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12.0),
            bottomRight: Radius.circular(
              12.0,
            ),
          ),
          color: whiteColor),
      child: Row(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: title,
                  fontsize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: blueGreyColor,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    Icon(
                      iconData,
                      size: 30.0,
                      color: greyColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    AppText(
                      text: subTitle,
                      fontsize: 15.0,
                      color: greyColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.height * 0.12,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  bottomRight: Radius.circular(
                    12.0,
                  ),
                ),
                color: blueGreyColor),
            child: const Center(
              child: Icon(
                Icons.arrow_forward_ios,
                color: whiteColor,
                size: 25.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
