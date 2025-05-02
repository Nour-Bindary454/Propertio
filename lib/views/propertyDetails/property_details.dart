import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';
import 'package:real_estate_app/core/default_button.dart';
import 'package:real_estate_app/core/property_container.dart';
import 'package:real_estate_app/views/SearchMap/search_map.dart';

import 'package:real_estate_app/views/ownerProfile/owner_profile.dart';
import 'package:real_estate_app/views/propertyDetails/widgets/scroll_down_row.dart';

class PropertyDetails extends StatefulWidget {
  const PropertyDetails(
      {super.key,
      required this.image,
      required this.price,
      required this.location,
      required this.type,
      required this.area,
      required this.bedRoom,
      required this.bathRoom,
      required this.kitchen});

  final String image;
  final double price;
  final String location;
  final String type;
  final int area;
  final int bedRoom;
  final int bathRoom;
  final int kitchen;

  @override
  State<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: DefaultAppBar(
        title: 'Property Details',
        hasAction: true,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: width * 0.05,
          right: width * 0.05,
          top: height * 0.02,
          bottom: height * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Property Details',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        PropertyContainer(
                          image: widget.image,
                          price: widget.price,
                          location: widget.location,
                          type: widget.type,
                          area: widget.area,
                          bedRoom: widget.bedRoom,
                          bathRoom: widget.bathRoom,
                          kitchen: widget.kitchen,
                          onTap: () {},
                          containerHeight: height * 0.5,
                          containerWidth: width * 0.95,
                          imageWidth: width * 0.8,
                          imageHeight: height * 0.3,
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Container(
                          padding: EdgeInsets.all(width * 0.04),
                          width: width * 0.95,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(27),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const OwnerProfile(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: height * 0.1,
                                      height: height * 0.1,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/images/nour.jpeg'))),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Nour Bendary',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        'Home Owner/Broker',
                                        style: TextStyle(
                                            fontSize: 15, color: greyTextColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: height * 0.002,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur',
                                style: TextStyle(
                                    fontSize: 14, color: greyTextColor),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        ScrollDownRow(
                          text: 'Amenities',
                          child: Container(),
                        ),
                        ScrollDownRow(
                          text: 'Interior Details',
                          child: Container(),
                        ),
                        ScrollDownRow(
                          text: 'Construction Details',
                          child: Container(),
                        ),
                        ScrollDownRow(
                          text: 'Location Map & Details',
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Location Map',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    'Hospital',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    'School',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SearchMap()));
                                },
                                child: Container(
                                  height: height * 0.3,
                                  width: width * 0.95,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(27),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/maps.jpg'))),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        DefaultButton(
                            text: 'Save',
                            onTap: () {},
                            buttonWidth: width * 0.9),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
