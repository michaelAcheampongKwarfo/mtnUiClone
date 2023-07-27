// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';
import 'package:mtn_clone/widgets/just4U_card.dart';

import '../../widgets/app_bar_leading.dart';

class Just4UScreen extends StatelessWidget {
  const Just4UScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: 'Just4U',
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
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: AppText(
                text: 'Exclusive offers Just4U',
                fontsize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Just4UCard(
              title: '500MB daily +\n100MB Bonus',
              subTitle:
                  'Buy the 500MB daily pack at GHc3 and get 100MB\nBonus valid for 1 day',
              trailing: 'GHc3.0',
              onTap: () {},
            ),
            Just4UCard(
              title: '100MB daily daily\npack',
              subTitle: 'Buy the 100MB daily pack at GHc1.50',
              trailing: 'GHc1.50',
              onTap: () {},
            ),
            Just4UCard(
              title: '825MB 7-day\npack',
              subTitle: 'Buy the 825MB daily pack at GHc3.2',
              trailing: 'GHc3.2',
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
