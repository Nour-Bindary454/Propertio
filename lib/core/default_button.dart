import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';

class DefaultButton extends StatefulWidget {
  const DefaultButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.buttonWidth});
  final String text;
  final void Function() onTap;
  final double buttonWidth;

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(widget.buttonWidth, 50),
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        onPressed: widget.onTap,
        child: Text(widget.text,
            style: const TextStyle(
              fontSize: 15,
            )));
  }
}
