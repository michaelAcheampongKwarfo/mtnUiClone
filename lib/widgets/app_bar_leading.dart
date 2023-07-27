import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.05,
      child: const Center(
        child: AppText(
          text: 'MTN',
          fontsize: 12.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
