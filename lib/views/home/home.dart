import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_button.dart';
import 'package:real_estate_app/core/featured_property_container.dart';
import 'package:real_estate_app/core/filters_button.dart';
import 'package:real_estate_app/core/property_container.dart';
import 'package:real_estate_app/core/search_field.dart';
import 'package:real_estate_app/core/selected_container.dart';
import 'package:real_estate_app/views/artificialApartment/artificial_apartment.dart';
import 'package:real_estate_app/views/propertyDetails/property_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RangeValues currentValue = const RangeValues(200, 5000);
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
  List<String> propertyType = ['Villa', 'Apartment', 'Duplex', 'Town House'];
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      Text(
                        'Nour Bendary',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    width: width * 0.15,
                    height: width * 0.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/nour.jpeg',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
              padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
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
            SizedBox(height: height * 0.02),
            Container(
              padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SelectedContainer(
                      image: 'assets/images/categories/cubes.png',
                      onTap: () {}),
                  SelectedContainer(
                      image: 'assets/images/categories/buildings.png',
                      onTap: () {}),
                  SelectedContainer(
                      image: 'assets/images/categories/onebuilding.png',
                      onTap: () {}),
                  SelectedContainer(
                      image: 'assets/images/categories/house.png', onTap: () {})
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'All Property',
                    style: TextStyle(
                        fontSize: 20,
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
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: height * 0.47,
              child: ListView.builder(
                padding:
                    EdgeInsets.only(left: width * 0.04, right: width * 0.04),
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
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
                    containerWidth: width * 0.8,
                    containerHeight: height * 0.3,
                    imageWidth: width * 0.7,
                    imageHeight: height * 0.3,
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(left: width * 0.04),
              alignment: Alignment.centerLeft,
              width: width,
              child: const Text(
                'Featured Property',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: height * 0.55,
              width: width,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return FeaturedContainer(
                      location: location[index],
                      type: propertyType[index],
                      bedRoom: bedRoom[index],
                      bathRoom: bathRoom[index],
                      kitchen: kitchen[index],
                      area: area[index],
                      image: images[index],
                      price: price[index],
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
                    );
                  }),
            ),
            DefaultButton(
                text: 'Smart Houses',
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const ArtificialApartment(),
                    withNavBar: false,
                  );
                },
                buttonWidth: width * 0.7),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
