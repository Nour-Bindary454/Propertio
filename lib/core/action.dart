import 'package:flutter/material.dart';

class ActionContainer extends StatelessWidget {
  const ActionContainer(
      {super.key,
      required this.containerColor,
      required this.iconColor,
      required this.icon,
      required this.onPressed});
  final Color containerColor;
  final Color iconColor;
  final Icon icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: containerColor,
        fixedSize: Size(width * 0.14, width * 0.14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: onPressed,
      icon: icon,
      color: iconColor,
    );
  }
}
