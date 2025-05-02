import 'package:flutter/material.dart';

class SelectedIcon extends StatelessWidget {
  const SelectedIcon({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(width * 0.018),
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.04),
        color: const Color.fromARGB(89, 187, 185, 239),
      ),
      child: ImageIcon(
        AssetImage(
          icon,
        ),
      ),
    );
  }
}
