import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';
import 'package:real_estate_app/core/property_container.dart';
import 'package:real_estate_app/core/save_icon.dart';
import 'package:real_estate_app/core/search_field.dart';
import 'package:real_estate_app/views/home/home.dart';
import 'package:real_estate_app/views/mainLayOut/main_lay_out.dart';

import 'package:real_estate_app/views/propertyDetails/property_details.dart';

class SavedProperty extends StatefulWidget {
  const SavedProperty({super.key});

  @override
  State<SavedProperty> createState() => _SavedPropertyState();
}

class _SavedPropertyState extends State<SavedProperty> {
  List<String> images = [
    'assets/images/buildings/photo_5969930780127904558_y.jpg',
    'assets/images/buildings/photo_5969930780127904559_x.jpg',
    'assets/images/buildings/photo_5969930780127904560_y.jpg',
    'assets/images/buildings/photo_5969930780127904562_x.jpg'
  ];
  List<double> price = [200000, 500000, 300000, 400000];
  List<String> location = [
    '2BW NY,New York',
    '2BW , chicago',
    'Cairo, Egypt',
    'Faris, France '
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
      appBar: DefaultAppBar(
        title: 'Saved Property',
        hasAction: false,
        onTap: () {
          PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: const MainLayOut(),
            withNavBar: false,
          );

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: width * 0.04,
                right: width * 0.04,
                top: height * 0.02,
                bottom: height * 0.02),
            child: const SearchField(
              hintText: 'Search...',
              containerWidth: 0.9,
            ),
          ),
          Expanded(
              flex: 2,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              width * 0.03, 0, width * 0.03, height * 0.02),
                          child: PropertyContainer(
                            onTap: () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: PropertyDetails(
                                  location: location[index],
                                  type: propertyType[index],
                                  bedRoom: bedRoom[index],
                                  bathRoom: bathRoom[index],
                                  kitchen: kitchen[index],
                                  area: area[index],
                                  image: images[index],
                                  price: price[index],
                                ),
                                withNavBar: false,
                              );
                            },
                            location: location[index],
                            type: propertyType[index],
                            bedRoom: bedRoom[index],
                            bathRoom: bathRoom[index],
                            kitchen: kitchen[index],
                            area: area[index],
                            image: images[index],
                            price: price[index],
                            containerHeight: height * 0.5,
                            containerWidth: width * 0.95,
                            imageWidth: width * 0.8,
                            imageHeight: height * 0.3,
                          ),
                        ),
                        const Positioned(right: 0, top: 0, child: SaveIcon()),
                      ],
                    );
                  }))
        ],
      ),
    );
  }
}
