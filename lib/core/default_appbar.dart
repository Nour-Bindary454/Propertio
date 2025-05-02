import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/save_icon.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar(
      {super.key,
      required this.title,
      required this.hasAction,
      required this.onTap});

  final String title;
  final bool hasAction;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
          onPressed: onTap,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: primaryColor,
          )),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      actions: [
        hasAction ? const SaveIcon() : Container(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
