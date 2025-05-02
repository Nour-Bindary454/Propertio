import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.boldText,
      required this.greyText,
      required this.hasSecGreyText,
      this.secGreyText});
  final String boldText;
  final String greyText;
  final String? secGreyText;
  final bool hasSecGreyText;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          boldText,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: height * 0.015,
        ),
        Text(
          greyText,
          style: TextStyle(color: greyTextColor),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        hasSecGreyText
            ? Text(
                secGreyText ?? '',
                style: TextStyle(color: greyTextColor),
              )
            : Container()
      ],
    );
  }
}
