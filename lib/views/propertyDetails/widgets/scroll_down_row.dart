import 'package:flutter/material.dart';

class ScrollDownRow extends StatefulWidget {
  const ScrollDownRow({super.key, required this.text, required this.child});
  // final void Function()? onPressed;
  final String text;
  final Widget child;
  @override
  State<ScrollDownRow> createState() => _ScrollDownRowState();
}

class _ScrollDownRowState extends State<ScrollDownRow> {
  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;

    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        childrenPadding: const EdgeInsets.all(14),
        collapsedIconColor: Colors.black,
        title: Text(
          widget.text,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
        ),
        iconColor: Colors.transparent,
        children: [widget.child],
      ),
    );
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Text(
    //       widget.text,
    //       style: TextStyle(
    //           fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
    //     ),
    //     IconButton(
    //       onPressed: widget.onPressed,
    //       icon: Icon(
    //         Icons.keyboard_arrow_down,
    //         color: Colors.black,
    //         size: width * 0.06,
    //       ),
    //     )
    //   ],
    // );
  }
}
