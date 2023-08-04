import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class DisplayDataDetails extends StatelessWidget {
  const DisplayDataDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10.0),
      color: whiteColor,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: const Column(
              children: [
                AppText(
                  text: 'Total data',
                  fontsize: 15.0,
                  color: greyColor,
                ),
                AppText(
                  text: '10.5 GB',
                  fontsize: 20.0,
                  color: blueGreyColor,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 0.8,
            height: 10.0,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: '400 MB',
                      fontsize: 20.0,
                      color: blueGreyColor,
                      fontWeight: FontWeight.bold,
                    ),
                    AppText(
                      text: 'Kokrokoo Data',
                      fontsize: 15.0,
                      color: greyColor,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 0.8,
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: '9.6 GB',
                      fontsize: 20.0,
                      color: blueGreyColor,
                      fontWeight: FontWeight.bold,
                    ),
                    AppText(
                      text: 'Midnight Flexi',
                      fontsize: 15.0,
                      color: greyColor,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
