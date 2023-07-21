import 'package:flutter/material.dart';
import 'package:mtn_clone/presentation/momo/momo_screen.dart';
import 'package:mtn_clone/presentation/navbar_screen.dart';
import 'package:mtn_clone/presentation/welcome_screen.dart';
import 'package:mtn_clone/widgets/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MTN Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: amberColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: amberColor,
          elevation: 0.0,
          centerTitle: true,
        ),
      ),
      home: const NavBarScreen(),
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/navBar': (context) => const NavBarScreen(),
        '/momo': (context) => const MomoScreen(),
      },
    );
  }
}
