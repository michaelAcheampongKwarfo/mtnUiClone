import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

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
