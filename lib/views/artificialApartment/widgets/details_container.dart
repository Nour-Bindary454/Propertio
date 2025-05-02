import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({super.key, required this.icon, required this.text});
  final Icon icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 226, 231, 236),
          ),
          child: Icon(
            icon.icon,
            color: primaryColor,
            size: 25,
          ),
        ),
        Text(text,
            style: TextStyle(
                color: Colors.grey[600], fontWeight: FontWeight.bold)),
      ],
    );
  }
}
