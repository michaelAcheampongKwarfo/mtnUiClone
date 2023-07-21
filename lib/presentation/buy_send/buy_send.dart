import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class BuySendScreen extends StatelessWidget {
  const BuySendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: 'BuySend',
          fontsize: 20.0,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: blackColor,
              ))
        ],
      ),
    );
  }
}
