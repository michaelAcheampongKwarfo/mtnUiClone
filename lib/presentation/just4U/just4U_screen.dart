// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

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
