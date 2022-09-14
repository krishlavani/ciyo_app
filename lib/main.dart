import 'package:ciyo_app/pages/page1.dart';
import 'package:ciyo_app/pages/page2.dart';
import 'package:ciyo_app/pages/page3.dart';
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
      theme: ThemeData(fontFamily: 'SFProText'),
      debugShowCheckedModeBanner: false,
      initialRoute: "/signupscreen",
      routes: {
        "/": (context) => const SplashScreen(),
        "/splashscreen": (context) => const SplashScreen(),
        "/onbordingscreen": (context) => const OnBordingScreen(),
        "/loginscreen": (context) => const LoginScreen(),
        "/page1": (context) => const Page1(),
        "/page2": (context) => const Page2(),
        "/page3": (context) => const Page3(),
        "/signupscreen": (context) => const SignUpScreen(),
      },
    );
  }
}
