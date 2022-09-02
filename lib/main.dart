import 'package:ciyo_app/screens/login_screen.dart';
import 'package:ciyo_app/screens/onbording_screen_1.dart';
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
      initialRoute: "/onbordingscreen1",
      routes: {
        "/": (context) => const SplashScreen(),
        "/splashscreen": (context) => const SplashScreen(),
        "/onbordingscreen1": (context) => const OnBordingScreen1(),
        "/loginscreen": (context) => const LoginScreen(),
      },
    );
  }
}
