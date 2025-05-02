import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_estate_app/core/colors.dart';

class PropertyContainer extends StatefulWidget {
  const PropertyContainer(
      {super.key,
      required this.containerWidth,
      required this.containerHeight,
      required this.imageHeight,
      required this.imageWidth,
      required this.onTap,
      required this.image,
      required this.price,
      required this.location,
      required this.type,
      required this.area,
      required this.bedRoom,
      required this.bathRoom,
      required this.kitchen});
  final double containerWidth;
  final double containerHeight;
  final double imageWidth;
  final double imageHeight;
  final void Function() onTap;
  final String image;
  final double price;
  final String location;
  final String type;
  final int area;
  final int bedRoom;
  final int bathRoom;
  final int kitchen;

  @override
  State<PropertyContainer> createState() => _PropertyContainerState();
}

class _PropertyContainerState extends State<PropertyContainer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.only(top: width * 0.02, bottom: width * 0.02),
        margin: const EdgeInsets.only(bottom: 10, right: 10),
        width: widget.containerWidth,
        height: widget.containerHeight,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: widget.imageWidth,
                height: widget.imageHeight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          widget.image,
                        ))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.type,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${widget.price}',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: greyTextColor,
                        size: 12,
                      ),
                      Text(
                        widget.location,
                        style: TextStyle(
                          color: greyTextColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '${widget.area} sqft',
                    style: TextStyle(
                      color: greyTextColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.bed_rounded,
                        color: secondaryColor,
                        size: 12,
                      ),
                      Text(
                        '${widget.bedRoom} Bedroom',
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bathtub_rounded,
                        color: secondaryColor,
                        size: 12,
                      ),
                      Text(
                        '${widget.bathRoom} Bathrooms',
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.soup_kitchen_outlined,
                        color: secondaryColor,
                        size: 12,
                      ),
                      Text(
                        '${widget.kitchen} Kitchen',
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
