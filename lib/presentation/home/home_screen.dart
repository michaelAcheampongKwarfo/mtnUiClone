import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_bar_leading.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';
import 'package:mtn_clone/widgets/home_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: 'Home',
          fontsize: 20.0,
        ),
        leading: const AppBarLeading(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/menu');
            },
            icon: const Icon(
              Icons.menu,
              color: blackColor,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          10.0,
        ),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: 'Y`ello\t\t',
                    fontsize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  AppText(text: 'Michael Acheampong', fontsize: 20.0),
                ],
              ),
            ),
            HomeCard(
              iconText: 'Airtime',
              title: 'GHc 20.0',
              subTitle: 'Bonus\t\tGHc 50.0',
              iconData: Icons.phone_android,
              onTap: () {},
            ),
            HomeCard(
              iconText: 'Data',
              title: '10.5 GB',
              subTitle: 'Bonus\t\t100 MB',
              iconData: Icons.wifi,
              onTap: () {},
            ),
            HomeCard(
              iconText: 'Voice',
              title: '100.0 mins',
              subTitle: 'Bonus\t\t10.0 Minutes',
              iconData: Icons.record_voice_over,
              onTap: () {},
            ),
            HomeCard(
              iconText: 'Broadband',
              title: 'Get Broadband',
              subTitle: 'Connect to the fastest\nspeed',
              iconData: Icons.wifi_tethering,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
