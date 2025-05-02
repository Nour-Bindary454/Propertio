import 'package:flutter/material.dart';
import 'package:real_estate_app/core/bottom_sheet_custom.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';
import 'package:real_estate_app/core/featured_property_container.dart';
import 'package:real_estate_app/core/profile_widget.dart';
import 'package:real_estate_app/core/contact_container.dart';

import 'package:real_estate_app/views/propertyDetails/property_details.dart';

class OwnerProfile extends StatefulWidget {
  const OwnerProfile({super.key});

  @override
  State<OwnerProfile> createState() => _OwnerProfileState();
}

class _OwnerProfileState extends State<OwnerProfile> {
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
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Owner Profile',
        hasAction: true,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const ProfileWidget(
              name: 'Nour Bendary',
              email: 'nourhassan@gmail.com',
              image: 'assets/images/nour.jpeg',
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContactContainer(
                  onTap: () {},
                  icon: const Icon(Icons.chat),
                  iconColor: Colors.blue,
                  text: 'Message',
                  containerColor: Colors.blue.shade50,
                ),
                ContactContainer(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return  BottomSheetCustom();
                        });
                  },
                  icon: const Icon(Icons.calendar_month_outlined),
                  iconColor: secondaryColor,
                  text: 'Schedule',
                  containerColor: const Color.fromARGB(255, 243, 232, 231),
                ),
                ContactContainer(
                  onTap: () {},
                  icon: const Icon(Icons.call),
                  iconColor: const Color.fromARGB(255, 24, 143, 28),
                  text: 'Call',
                  containerColor: const Color.fromARGB(255, 212, 230, 213),
                )
              ],
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Property',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
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
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
