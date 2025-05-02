
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_estate_app/core/colors.dart';

class SearchField extends StatefulWidget {
  const SearchField(
      {super.key, required this.containerWidth,required this.hintText});
  final double containerWidth;
 final String hintText ;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: width * widget.containerWidth,
          height: height * 0.08,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/icons/search.png',
                width: width * 0.1,
                color: primaryColor,
              ),
              SizedBox(
                height: height * 0.04,
                child: VerticalDivider(
                  color: primaryColor,
                  thickness: 0.9,
                ),
              ),
              SizedBox(
                  width: width * 0.45,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.hintText,
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
