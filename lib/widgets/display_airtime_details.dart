import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class DisplayAirtimeDetails extends StatelessWidget {
  const DisplayAirtimeDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: whiteColor,
      width: MediaQuery.of(context).size.width,
      child: const Column(children: [
        AppText(
          text: 'Total airtime',
          fontsize: 15.0,
          color: greyColor,
        ),
        AppText(
          text: 'GHc 20.0',
          fontsize: 20.0,
          color: blueGreyColor,
          fontWeight: FontWeight.bold,
        ),
        Divider(
          thickness: 0.8,
          color: greyColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: 'GHc 20.0',
                  fontsize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                AppText(text: 'Airtime', fontsize: 15.0)
              ],
            ),
            AppText(
              text: 'Lifetime\nValidity',
              fontsize: 14.0,
              color: greyColor,
            ),
          ],
        ),
        Divider(
          thickness: 0.8,
          color: greyColor,
        ),
      ]),
    );
  }
}
