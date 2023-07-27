import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class GetMoreCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData iconData;
  final Color? color;
  final VoidCallback? onTap;
  const GetMoreCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.iconData,
      required this.onTap,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12.0),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: color ?? amberColor,
                  child: Icon(
                    iconData,
                    size: 30.0,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Column(
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
                    AppText(
                      text: subTitle,
                      fontsize: 14.0,
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
                bottomRight: Radius.circular(12),
              ),
              color: blueGreyColor,
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_forward_ios,
                size: 25.0,
                color: whiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
