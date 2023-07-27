import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_bar_leading.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';
import 'package:mtn_clone/widgets/get_more_card.dart';

class GetMoreScreen extends StatelessWidget {
  const GetMoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: 'Get More',
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
              ))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                const AppText(
                  text: 'Get More',
                  fontsize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const AppText(
                    text: 'Get access to other great products and services',
                    fontsize: 14.0),
              ],
            ),
            GetMoreCard(
              title: 'eSIM',
              subTitle: 'eSIM request portal',
              iconData: Icons.sim_card,
              onTap: () {},
            ),
            GetMoreCard(
              title: 'Ayoba',
              subTitle: 'A super app',
              iconData: Icons.phone_android,
              onTap: () {},
            ),
            GetMoreCard(
              title: 'MoMo',
              subTitle: 'Transactions & Payments',
              iconData: Icons.account_balance_wallet,
              onTap: () {},
            ),
            GetMoreCard(
              title: 'Games',
              subTitle: 'Games & More',
              iconData: Icons.gamepad,
              onTap: () {},
            ),
            GetMoreCard(
              title: 'Videos',
              subTitle: 'Movies & More',
              iconData: Icons.tv,
              onTap: () {},
            ),
            GetMoreCard(
              title: 'Others',
              subTitle: 'More services',
              iconData: Icons.add,
              onTap: () {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
