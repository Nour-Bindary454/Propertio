import 'package:flutter/material.dart';

class Listtilecustom extends StatefulWidget {
  const Listtilecustom(
      {super.key,
      required this.title,
      required this.icon,
      required this.containerColor,
      required this.onTap,
      required this.hastrailing});
  final String title;
  final Icon icon;
  final Function() onTap;
  final bool hastrailing;
  final Color containerColor;
  @override
  State<Listtilecustom> createState() => _ListtilecustomState();
}

class _ListtilecustomState extends State<Listtilecustom> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 60,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: widget.containerColor,
        ),
        child: widget.icon,
      ),
      title: Text(
        widget.title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: widget.hastrailing
          ? const Icon(Icons.arrow_forward_ios)
          : const Icon(
              Icons.arrow_forward_ios,
              color: Colors.transparent,
            ),
      onTap: widget.onTap,
    );
  }
}
