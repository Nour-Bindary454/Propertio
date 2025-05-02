import 'package:flutter/material.dart';

class SelectedContainer extends StatefulWidget {
  const SelectedContainer(
      {super.key, required this.image, required this.onTap});
  final String image;
  final void Function() onTap;
  @override
  State<SelectedContainer> createState() => _SelectedContainerState();
}

class _SelectedContainerState extends State<SelectedContainer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: width * 0.18,
        height: width * 0.18,
        margin: EdgeInsets.all(width * 0.01),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(192, 224, 219, 219)),
      ),
    );
  }
}
