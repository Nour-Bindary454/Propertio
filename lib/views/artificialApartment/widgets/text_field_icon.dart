import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';

class TextFieldIcon extends StatelessWidget {
  const TextFieldIcon(
      {super.key,
      required this.containerWidth,
      required this.hintText,
      required this.icon,
      required this.textFieldWidth,
      required this.isWidgetEmpty,
      
      });
  final double containerWidth;
  final String hintText;
  final Icon icon;
  final double textFieldWidth;
  final bool isWidgetEmpty;
  @override
  Widget build(BuildContext context) {
    
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      alignment: Alignment.centerLeft,
      width: containerWidth,
      height: height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 223, 224, 226),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: textFieldWidth,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
            ),
          ),
isWidgetEmpty?Container():
          Icon(
            icon.icon,
            color: primaryColor,
          )
        ],
      ),
    );
  }
}
