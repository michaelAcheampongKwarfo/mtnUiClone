import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_bar_leading.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';
import 'package:mtn_clone/widgets/menu_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: 'Menu',
          fontsize: 20.0,
        ),
        automaticallyImplyLeading: false,
        leading: const AppBarLeading(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                color: blackColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: greyColor,
                  child: Icon(
                    Icons.person,
                    size: 60.0,
                    color: whiteColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                  ),
                  child: AppText(
                    text: 'Michael Acheampong\nKwarfo',
                    fontsize: 25.0,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                MenuCard(
                    iconData: Icons.home_outlined, text: 'Home', onTap: () {}),
                MenuCard(
                    iconData: Icons.sim_card_alert_outlined,
                    text: 'SIM Registration',
                    onTap: () {}),
                MenuCard(
                    iconData: Icons.sim_card_outlined,
                    text: 'eSIM',
                    onTap: () {}),
                MenuCard(
                    iconData: Icons.notes_outlined,
                    text: 'Bill Summary',
                    onTap: () {}),
                MenuCard(
                    iconData: Icons.account_balance_wallet_outlined,
                    text: 'Bill Pay',
                    onTap: () {}),
                MenuCard(
                    iconData: Icons.history_outlined,
                    text: 'Account History',
                    onTap: () {}),
                MenuCard(
                    iconData: Icons.wifi_tethering,
                    text: 'Request Broadband',
                    onTap: () {}),
                MenuCard(
                    iconData: Icons.favorite_outline,
                    text: 'Subscriptions',
                    onTap: () {}),
                MenuCard(
                    iconData: Icons.person_outline,
                    text: 'Profile',
                    onTap: () {}),
                MenuCard(
                    iconData: Icons.error_outline_outlined,
                    text: 'Report MoMo fraud',
                    onTap: () {}),
                MenuCard(
                    iconData: Icons.star_border_outlined,
                    text: 'Rate app experirnce',
                    onTap: () {}),
                MenuCard(
                    iconData: Icons.help_center_outlined,
                    text: 'Help',
                    onTap: () {}),
                MenuCard(
                    iconData: Icons.attach_money,
                    text: 'Switch to consumer MoMo',
                    onTap: () {}),
                MenuCard(iconData: Icons.logout, text: 'Logout', onTap: () {}),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: AppText(
              text: 'Release v3.15',
              fontsize: 14.0,
            ),
          ),
        ]),
      ),
    );
  }
}
