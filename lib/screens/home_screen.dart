import 'package:ciyo_app/const/colors.dart';
import 'package:ciyo_app/pages/page_home.dart';
import 'package:ciyo_app/pages/page_search.dart';
import 'package:ciyo_app/pages/page_setting.dart';
import 'package:ciyo_app/pages/page_wallet.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  final pages = [
    const PageHome(),
    const PageSearch(),
    const PageWallet(),
    const PageSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: pages[pageIndex],
          bottomNavigationBar: buildMyNavBar(context),
        ),
      ],
    );
  }

  Padding buildMyNavBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6865FD),
              Color(0xFF4B6BFF),
            ],
          ),
          // color: primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const ImageIcon(
                      AssetImage("assets/images/Home.png"),
                      color: Colors.white,
                      size: 35,
                    )
                  : const ImageIcon(
                      AssetImage("assets/images/Home.png"),
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const ImageIcon(
                      AssetImage("assets/images/Search.png"),
                      color: Colors.white,
                      size: 35,
                    )
                  : const ImageIcon(
                      AssetImage("assets/images/Search.png"),
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const ImageIcon(
                      AssetImage("assets/images/wallet.png"),
                      color: Colors.white,
                      size: 35,
                    )
                  : const ImageIcon(
                      AssetImage("assets/images/wallet.png"),
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const ImageIcon(
                      AssetImage("assets/images/Setting.png"),
                      color: Colors.white,
                      size: 35,
                    )
                  : const ImageIcon(
                      AssetImage("assets/images/Setting.png"),
                      color: Colors.white,
                      size: 35,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
