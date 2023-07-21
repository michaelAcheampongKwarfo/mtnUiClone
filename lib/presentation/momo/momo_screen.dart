import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

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
