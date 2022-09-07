import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
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
              //       Navigator.pushNamed(context, "/loginscreen");
              //     },
              //     style: ElevatedButton.styleFrom(
              //       primary: primary,
              //     ),
              //     child: const Text(
              //       "GET STARTED",
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
