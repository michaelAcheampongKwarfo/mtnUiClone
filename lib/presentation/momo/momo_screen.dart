import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';
import 'package:mtn_clone/widgets/momo_balance.dart';
import 'package:mtn_clone/widgets/momo_card.dart';

class MomoScreen extends StatelessWidget {
  const MomoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: 'Momo',
          fontsize: 20.0,
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const MomoBalance(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: AppText(
                text: 'MoMo services',
                fontsize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MomoCard(
                  text: 'Transfer money',
                  icon: Icons.attach_money,
                  callback: () {},
                ),
                MomoCard(
                  text: 'Cashout',
                  icon: Icons.shopping_cart_checkout_outlined,
                  callback: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MomoCard(
                  text: 'Airtime',
                  icon: Icons.phone_android_outlined,
                  callback: () {},
                ),
                MomoCard(
                  text: 'Bank Services',
                  icon: Icons.shield_moon_outlined,
                  callback: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MomoCard(
                  text: 'Pay bill',
                  icon: Icons.notes,
                  callback: () {},
                ),
                MomoCard(
                  text: 'Report MoMo Fraud',
                  icon: Icons.error_outline_outlined,
                  callback: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MomoCard(
                  text: 'My Wallet',
                  icon: Icons.account_balance_wallet_outlined,
                  callback: () {},
                ),
                MomoCard(
                  text: 'Approvals',
                  icon: Icons.checklist_rtl_outlined,
                  callback: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
