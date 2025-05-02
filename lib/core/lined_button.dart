import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';

class LinedButton extends StatefulWidget {
  const LinedButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.buttonWidth,
      required this.buttonHeight});
  final Function() onTap;
  final String text;
  final double buttonWidth;
  final double buttonHeight;

  @override
  State<LinedButton> createState() => _LinedButtonState();
}

class _LinedButtonState extends State<LinedButton> {
  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: widget.onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: primaryColor,
          fixedSize: Size(widget.buttonWidth, widget.buttonHeight),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: primaryColor))),
      child: Text(widget.text),
    );
  }
}
