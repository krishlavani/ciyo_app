import 'package:ciyo_app/const/colors.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "TOTAL BALANCE",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontFamily: 'SFProText',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: const TextSpan(
              text: '\$ ',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFAEB6CE),
                fontFamily: 'SFProText',
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '38,525,19',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                TextSpan(text: ' USD'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: primary),
                  onPressed: () {},
                  child: const Text("Trade"),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF272C52),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Transfer",
                    style: TextStyle(
                      fontFamily: 'SFProText',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Charts",
                  style: TextStyle(
                    fontFamily: 'SFProText',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text("See all"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
