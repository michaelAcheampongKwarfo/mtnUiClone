import 'package:flutter/material.dart';
import 'package:mtn_clone/widgets/app_colors.dart';
import 'package:mtn_clone/widgets/app_text.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: amberColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppText(
              text: 'Welcome to my MTN app',
              fontsize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const CircularProgressIndicator.adaptive(
              backgroundColor: amberColor,
            ),
          ],
        ),
      ),
    );
  }
}
