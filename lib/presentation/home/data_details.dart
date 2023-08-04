import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';
import 'package:mtn_clone/widgets/display_data_details.dart';

class DataDetails extends StatelessWidget {
  const DataDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: 'Data details',
          fontsize: 20.0,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/menu');
            },
            icon: const Icon(
              Icons.menu,
              color: blackColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const DisplayDataDetails(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              height: 40.0,
              child: const Center(
                child: AppText(text: 'Data History', fontsize: 18.0),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const AppText(text: 'Recent History', fontsize: 15.0),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: whiteColor,
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: blueGreyColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        text: 'Buy',
                        fontsize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: whiteColor,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: whiteColor,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
