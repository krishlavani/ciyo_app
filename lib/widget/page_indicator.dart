

import 'package:ciyo_app/const/colors.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  PageIndicator({super.key, required this.isblue});

  bool isblue;
  @override
  Widget build(BuildContext context) {
    return Text(
      ".",
      style: TextStyle(
        color: isblue ? primary : Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
