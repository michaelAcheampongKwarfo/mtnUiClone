import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';
import 'package:mtn_clone/widgets/display_airtime_details.dart';

class AirtimeDetails extends StatefulWidget {
  const AirtimeDetails({super.key});

  @override
  State<AirtimeDetails> createState() => _AirtimeDetailsState();
}

class _AirtimeDetailsState extends State<AirtimeDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const AppText(
            text: 'Airtime details',
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
          padding: const EdgeInsets.all(10.0),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const DisplayAirtimeDetails(),
              Container(
                width: MediaQuery.of(context).size.width,
                color: whiteColor,
                child: const TabBar(
                  indicatorColor: blackColor,
                  labelColor: blackColor,
                  unselectedLabelColor: greyColor,
                  labelStyle: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal),
                  unselectedLabelStyle: TextStyle(
                      fontFamily: 'Times New Roman',
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal),
                  tabs: [
                    Tab(text: 'Airtime Used'),
                    Tab(text: 'Airtime Bought')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: TabBarView(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: whiteColor,
                        child:
                            const AppText(text: 'Airtime Used', fontsize: 15.0),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: whiteColor,
                        child: const AppText(
                            text: 'Airtime Bought', fontsize: 15.0),
                      ),
                    ],
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
