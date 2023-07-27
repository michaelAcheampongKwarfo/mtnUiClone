import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class HomeCard extends StatelessWidget {
  final String iconText;
  final String title;
  final String subTitle;
  final IconData iconData;
  final VoidCallback onTap;
  const HomeCard(
      {super.key,
      required this.iconText,
      required this.title,
      required this.subTitle,
      required this.iconData,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppText(
                          text: iconText,
                          fontsize: 12.0,
                          fontWeight: FontWeight.normal,
                          color: blackColor,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Icon(
                          iconData,
                          color: amberColor,
                          size: 30.0,
                        ),
                      ],
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
                        fontsize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
