import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';

class FeaturedContainer extends StatefulWidget {
  const FeaturedContainer(
      {super.key,
      required this.onTap,
      required this.image,
      required this.price,
      required this.location,
      required this.type,
      required this.area,
      required this.bedRoom,
      required this.bathRoom,
      required this.kitchen});
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
  State<FeaturedContainer> createState() => _FeaturedContainerState();
}

class _FeaturedContainerState extends State<FeaturedContainer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: widget.onTap,
      child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(10),
          width: width * 0.9,
          height: height * 0.13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                width: width * 0.2,
                height: width * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(
                          widget.image,
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                padding: EdgeInsets.only(left: width * 0.02),
                alignment: Alignment.centerLeft,
                width: width * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.type,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$${widget.price}',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: greyTextColor,
                              size: 15,
                            ),
                            Text(
                              widget.location,
                              style: TextStyle(
                                color: greyTextColor,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.space_dashboard,
                              color: secondaryColor,
                              size: 12,
                            ),
                            Text(
                              widget.area.toString(),
                              style: const TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.bed_rounded,
                              color: secondaryColor,
                              size: 12,
                            ),
                            Text(
                              '${widget.bedRoom}',
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
                              '${widget.bathRoom}',
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
                              '${widget.kitchen}',
                              style: const TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
