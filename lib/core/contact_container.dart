import 'package:flutter/material.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer(
      {super.key,
      required this.iconColor,
      required this.containerColor,
      required this.text,
      required this.icon,
      required this.onTap});
  final Color iconColor;
  final Color containerColor;
  final String text;
  final Icon icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width * 0.25,
        height: width * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: containerColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon.icon,
              color: iconColor,
              size: 30,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
