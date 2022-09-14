import 'package:ciyo_app/const/colors.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(300, 50),
        backgroundColor: primary,
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/loginscreen");
      },
      child: const Text("GET STARTED"),
    );
  }
}
