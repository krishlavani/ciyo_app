import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
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

              // const SizedBox(
              //   height: 155.61,
              // ),
              // const SizedBox(
              //   height: 53.89,
              // ),
              // SizedBox(
              //   height: 50,
              //   width: 335,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       // Navigator.pushNamed(context, "/page2");
              //     },
              //     style: ElevatedButton.styleFrom(
              //       primary: primary,
              //     ),
              //     child: const Text(
              //       "NEXT",
              //       style: TextStyle(fontWeight: FontWeight.w700),
              //     ),
              //   ),
              // )
            ],
          ),
        )
      ],
    );
  }
}
