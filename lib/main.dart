// import 'package:ciyo_app/screens/pages/page1.dart';
// import 'package:ciyo_app/screens/pages/page2.dart';
// import 'package:ciyo_app/screens/pages/page3.dart';
import 'package:ciyo_app/screens/pages/page_home.dart';
import 'package:ciyo_app/screens/pages/page_search.dart';
import 'package:ciyo_app/screens/pages/page_setting.dart';
import 'package:ciyo_app/screens/pages/page_wallet.dart';
import 'package:ciyo_app/screens/home_screen.dart';
import 'package:ciyo_app/screens/login_screen.dart';
import 'package:ciyo_app/screens/onbording_screen.dart';
import 'package:ciyo_app/screens/sign_up_screen.dart';
import 'package:ciyo_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SFProText',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/onbordingscreen",
      routes: {
        "/": (context) => const SplashScreen(),
        "/onbordingscreen": (context) => const OnBordingScreen(),
        "/loginscreen": (context) => const LoginScreen(),
        // "/page1": (context) => const Page1(),
        // "/page2": (context) => const Page2(),
        // "/page3": (context) => const Page3(),
        "/signupscreen": (context) => const SignUpScreen(),
        "/homescreen": (context) => const HomeScreen(),
        "/homepage": (context) => const PageHome(),
        "/searchpage": (context) => const PageSearch(),
        "/walletpage": (context) => const PageWallet(),
        "/settingpage": (context) => const PageSetting(),
      },
    );
  }
}
