import 'package:flutter/material.dart';
import 'package:mtn_clone/presentation/buy_send/buy_send_screen.dart';
import 'package:mtn_clone/presentation/get_more/get_more_screen.dart';
import 'package:mtn_clone/presentation/home/home_screen.dart';
import 'package:mtn_clone/presentation/just4U/just4U_screen.dart';
import 'package:mtn_clone/widgets/app_colors.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _pageIndex = 0;

  onTap(int pageIndex) {
    setState(() {
      _pageIndex = pageIndex;
    });
  }

  final List _appList = [
    const HomeScreen(),
    const BuySendScreen(),
    const Just4UScreen(),
    const GetMoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _appList[_pageIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/momo');
        },
        backgroundColor: whiteColor,
        child: const Icon(
          Icons.account_balance_wallet_outlined,
          color: amberColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: amberColor,
          unselectedItemColor: blackColor,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14.0,
          onTap: onTap,
          currentIndex: _pageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Buy/Send',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Just4U',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined),
              label: 'Get More',
            ),
          ]),
    );
  }
}
