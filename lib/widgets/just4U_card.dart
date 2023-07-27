// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class Just4UCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String trailing;
  final VoidCallback onTap;
  const Just4UCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.trailing,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: title,
                    fontsize: 18.0,
                    color: blueGreyColor,
                    fontWeight: FontWeight.bold,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: blueGreyColor, width: 1),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Center(
                      child: AppText(
                        text: trailing,
                        fontsize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: blueGreyColor,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              AppText(
                text: subTitle,
                fontsize: 14.0,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: blueGreyColor,
                ),
                child: const Center(
                  child: AppText(
                    text: 'Stay Connected',
                    fontsize: 12.0,
                    color: whiteColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
