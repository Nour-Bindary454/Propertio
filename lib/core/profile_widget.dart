import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.image,
    required this.name,
    required this.email,
    this.widget,
  });
  final String image;
  final String name;
  final String email;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  email,
                  style: TextStyle(fontSize: 12, color: greyTextColor),
                ),
              ],
            ),
          ],
        ),
        widget ?? Container(),
      ],
    );
  }
}
