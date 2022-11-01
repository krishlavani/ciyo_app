import 'package:ciyo_app/widget/get_started.dart';
import 'package:ciyo_app/widget/page_indicator.dart';
import 'package:flutter/material.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  int num = 0;

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
          num == 0
              ? Center( 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/page1.png",
                            height: 170,
                            width: 109,
                          ),
                          const SizedBox(
                            height: 37.35,
                          ),
                          const Text(
                            "Cryptocurrency exchange\nsecurity features",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PageIndicator(isblue: true),
                          PageIndicator(isblue: false),
                          PageIndicator(isblue: false),
                        ],
                      ),
                      GetStartedButton(
                        isgetstarted: num == 2 ? true : false,
                        ontap: () {
                          setState(() {});
                          num++;
                        },
                      ),
                    ],
                  ),
                )
              : num == 1
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/page2.png",
                                height: 170,
                                width: 109,
                              ),
                              const SizedBox(
                                height: 37.35,
                              ),
                              const Text(
                                "Statistical analysis of\nthe exchange rate ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PageIndicator(isblue: false),
                              PageIndicator(isblue: true),
                              PageIndicator(isblue: false),
                            ],
                          ),
                          GetStartedButton(
                            isgetstarted: num == 2 ? true : false,
                            ontap: () {
                              setState(() {});
                              num++;
                            },
                          ),
                        ],
                      ),
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/page3.png",
                                height: 170,
                                width: 109,
                              ),
                              const SizedBox(
                                height: 37.35,
                              ),
                              const Text(
                                "Best place to buy,sell &\npay with crypto",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PageIndicator(isblue: false),
                              PageIndicator(isblue: false),
                              PageIndicator(isblue: true),
                            ],
                          ),
                          GetStartedButton(
                            isgetstarted: num == 2 ? true : false,
                            ontap: () {
                              setState(() {});
                              Navigator.pushNamed(context, "/loginscreen");
                            },
                          ),
                        ],
                      ),
                    ),
        ],
      ),
    );
  }
}
