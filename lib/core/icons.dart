import 'package:flutter/material.dart';

class LoginIcons extends StatelessWidget {
  const LoginIcons(
      {super.key,
      required this.image,
      required this.size,
      required this.onTap});
  final String image;
  final double size;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
        onTap: () {},
        child: SizedBox(
            width: width * size,
            height: width * size,
            child: Image.asset(
              image,
            )));
  }
}
