import 'package:ciyo_app/const/colors.dart';
import 'package:flutter/material.dart';

class OnBordingScreen1 extends StatefulWidget {
  const OnBordingScreen1({Key? key}) : super(key: key);

  @override
  State<OnBordingScreen1> createState() => _OnBordingScreen1State();
}

class _OnBordingScreen1State extends State<OnBordingScreen1>
    with TickerProviderStateMixin {
  final int numDots = 3;
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: numDots, vsync: this);
  }

  void incrementCounter() {
    setState(() {
      (controller.index == numDots - 1)
          ? controller.index = 0
          : controller.index++;
    });
  }

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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/onbording1.png",
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
                const SizedBox(
                  height: 155.61,
                ),
                TabPageSelector(
                  controller: controller,
                ),
                const SizedBox(
                  height: 53.89,
                ),
                Container(
                  height: 50,
                  width: 335,
                  child: ElevatedButton(
                      onPressed: () {
                        incrementCounter();
                      },
                      // style: ,
                      child: const Text(
                        "NEXT",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
