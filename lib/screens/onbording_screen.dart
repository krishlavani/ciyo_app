import 'package:ciyo_app/const/colors.dart';
import 'package:ciyo_app/pages/page1.dart';
import 'package:ciyo_app/pages/page2.dart';
import 'package:ciyo_app/pages/page3.dart';
import 'package:ciyo_app/widget/get_started.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  final _controller = PageController();

  int num = 0;
  static bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 250,
                child: PageView(
                  controller: _controller,
                  children: const [
                    Page1(),
                    Page2(),
                    Page3(),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  activeDotColor: primary,
                  dotColor: Colors.white,
                ),
              ),
              Container(
                child:
                    isVisible == true ? const GetStartedButton() : Container(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
