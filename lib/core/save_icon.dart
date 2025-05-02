import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';

class SaveIcon extends StatefulWidget {
  const SaveIcon({super.key});

  @override
  State<SaveIcon> createState() => _SaveIconState();
}

class _SaveIconState extends State<SaveIcon> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(
          top: height * 0.02, left: width * 0.05, right: width * 0.05),
      child: IconButton(
        style: IconButton.styleFrom(
          backgroundColor: const Color.fromARGB(183, 161, 197, 227),
          fixedSize: Size(width * 0.15, width * 0.15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {},
        icon: ImageIcon(
          const AssetImage(
            'assets/images/icons/Bookmark.png',
          ),
          color: primaryColor,
        ),
      ),
    );
  }
}
