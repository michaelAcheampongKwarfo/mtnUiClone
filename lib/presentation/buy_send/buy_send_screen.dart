import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_bar_leading.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';
import 'package:mtn_clone/widgets/buy_send_card.dart';

class BuySendScreen extends StatelessWidget {
  const BuySendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: 'Buy/Send',
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
        padding: const EdgeInsets.all(
          10.0,
        ),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                  border: Border.all(color: amberColor, width: 1.5),
                  borderRadius: BorderRadius.circular(8.0),
                  color: whiteColor),
              child: const ListTile(
                title: AppText(
                  text: 'Special Day Offers!',
                  fontsize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                leading: Icon(
                  Icons.wifi_tethering,
                  color: amberColor,
                  size: 30.0,
                ),
                subtitle: AppText(
                  text:
                      'Enjoy 2.5GB of data for only GHc 10\non holidays and special days valid for 24hours .',
                  fontsize: 15.0,
                  color: greyColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: const Divider(
                  thickness: 2.0,
                ),
              ),
            ),
            BuySendCard(
              title: 'Airtime',
              subTitle: 'TopUp Airtime: Pay with momo',
              iconData: Icons.call,
              onTap: () {},
            ),
            BuySendCard(
              title: 'Data',
              subTitle: 'Stay connected to the rest of the\nworld',
              iconData: Icons.keyboard_double_arrow_up,
              onTap: () {},
            ),
            BuySendCard(
              title: 'IDD Bundles',
              subTitle: 'Special international calls offers',
              iconData: Icons.public,
              onTap: () {},
            ),
            BuySendCard(
              title: 'MTN Plus',
              subTitle: 'Mashup your bundles',
              iconData: Icons.table_rows,
              onTap: () {},
            ),
            BuySendCard(
              title: 'Social Bundle',
              subTitle: 'Get social | stay conntected',
              iconData: Icons.facebook,
              onTap: () {},
            ),
            BuySendCard(
              title: 'Others',
              subTitle: 'Videos,Midnight & Kokrokoo',
              iconData: Icons.add,
              onTap: () {},
            ),
            BuySendCard(
              title: 'Just4U',
              subTitle: 'Unique offers for you',
              iconData: Icons.shopping_bag_outlined,
              onTap: () {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
