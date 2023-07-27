import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class MomoBalance extends StatelessWidget {
  const MomoBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: whiteColor,
      ),
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.01,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                  color: blueGreyColor,
                ),
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.phone_android,
                            color: greyColor,
                            size: 15.0,
                          ),
                          AppText(
                            text: 'MoMo Balance',
                            fontsize: 18.0,
                            color: greyColor,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                      Divider(),
                      AppText(
                        text: 'GHc 5000.00',
                        fontsize: 18.0,
                        fontWeight: FontWeight.bold,
                      )
                    ],
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: amberColor),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: amberColor),
                      ),
                      child: const Icon(
                        Icons.qr_code_2,
                        color: blueGreyColor,
                        size: 50.0,
                      ),
                    ),
                    const AppText(
                      text: 'MoMo Pay',
                      fontsize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: blueGreyColor,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            color: amberColor,
          ),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.phone_android,
                  color: blueGreyColor,
                ),
                AppText(
                  text: 'Download the MoMo App for more',
                  fontsize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: blueGreyColor,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: blueGreyColor,
                ),
              ]),
        ),
      ]),
    );
  }
}
