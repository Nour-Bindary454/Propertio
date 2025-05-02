import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin(
      {super.key,
      required this.image,
      required this.hintText,
      required this.containrColor,
      required this.iconColor});
  final String image;
  final String hintText;
  final Color containrColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: containrColor,
            borderRadius: BorderRadius.circular(30),
          ),
          width: width * 0.08,
          height: width * 0.08,
          child: Image.asset(image, color: iconColor),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}
