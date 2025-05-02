import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/filters_button.dart';
import 'package:real_estate_app/core/property_container.dart';
import 'package:real_estate_app/core/search_field.dart';
import 'package:real_estate_app/views/propertyDetails/property_details.dart';

class MatchedProperty extends StatefulWidget {
  const MatchedProperty({super.key});

  @override
  State<MatchedProperty> createState() => _MatchedPropertyState();
}

class _MatchedPropertyState extends State<MatchedProperty> {
  List<String> images = [
    'assets/images/buildings/photo_5969930780127904558_y.jpg',
    'assets/images/buildings/photo_5969930780127904559_x.jpg',
    'assets/images/buildings/photo_5969930780127904560_y.jpg',
    'assets/images/buildings/photo_5969930780127904562_x.jpg'
  ];
  List<double> price = [200000, 500000, 300000, 400000];
  List<String> location = [
    '2BW NY,New York',
    '2BW , Chicago',
    'Cairo, Egypt',
    'Paris, France '
  ];
  List<String> propertyType = ['Villa', 'Apartment', 'Duplex', 'TownHouse'];
  List<int> bedRoom = [2, 3, 4, 5];
  List<int> bathRoom = [2, 3, 4, 5];
  List<int> kitchen = [2, 2, 2, 1];
  List<int> area = [500, 240, 400, 5000];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            padding: EdgeInsets.only(
                left: width * 0.04,
                right: width * 0.04,
                top: height * 0.02,
                bottom: height * 0.02),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SearchField(
                  containerWidth: 0.65,
                  hintText: 'Search...',
                ),
                FiltersButton(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Matched Property',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Text('See All',
                        style: TextStyle(color: textColor, fontSize: 15)),
                    arrow
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: width * 0.9,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return PropertyContainer(
                    location: location[index],
                    type: propertyType[index],
                    bedRoom: bedRoom[index],
                    bathRoom: bathRoom[index],
                    kitchen: kitchen[index],
                    area: area[index],
                    image: images[index],
                    price: price[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PropertyDetails(
                                  location: location[index],
                                  type: propertyType[index],
                                  bedRoom: bedRoom[index],
                                  bathRoom: bathRoom[index],
                                  kitchen: kitchen[index],
                                  area: area[index],
                                  image: images[index],
                                  price: price[index],
                                )),
                      );
                    },
                    containerHeight: height * 0.5,
                    containerWidth: width * 0.95,
                    imageWidth: width * 0.8,
                    imageHeight: height * 0.3,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
