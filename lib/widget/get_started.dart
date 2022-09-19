import 'package:ciyo_app/const/colors.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatefulWidget {
  GetStartedButton({
    super.key,
    this.isgetstarted = false,
    required this.ontap,
  });

  bool isgetstarted;
  final VoidCallback ontap;

  @override
  State<GetStartedButton> createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends State<GetStartedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(300, 50),
        backgroundColor: primary,
      ),
      onPressed: widget.ontap,
      child: Text(widget.isgetstarted ? "GET STARTED" : "NEXT"),
    );
  }
}
