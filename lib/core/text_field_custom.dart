import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom(
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
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.77,
      height: height * 0.09,
      padding: EdgeInsets.only(left: width * 0.02),
      margin: EdgeInsets.all(width * 0.02),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
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
      ),
    );
  }
}
