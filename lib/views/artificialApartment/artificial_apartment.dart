import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/contact_container.dart';
import 'package:real_estate_app/core/default_appbar.dart';

import 'package:real_estate_app/core/profile_widget.dart';
import 'package:real_estate_app/core/bottom_sheet_custom.dart';
import 'package:real_estate_app/views/artificialApartment/widgets/details_container.dart';
import 'package:real_estate_app/views/mainLayOut/main_lay_out.dart';

class ArtificialApartment extends StatefulWidget {
  const ArtificialApartment({super.key});

  @override
  State<ArtificialApartment> createState() => _ArtificialApartmentState();
}

class _ArtificialApartmentState extends State<ArtificialApartment> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: DefaultAppBar(
         onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const MainLayOut()));
        },
        title: 'Artificial Apartment', hasAction: true),
      body: ListView.builder(
          padding: const EdgeInsets.only(left: 20, right: 20),
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const Row(
                  children: [
                    Icon(Icons.location_on_outlined,
                        color: Color.fromARGB(255, 122, 121, 121)),
                    Text('NY,New York',
                        style: TextStyle(
                            color: Color.fromARGB(255, 122, 121, 121))),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  width: width * 0.9,
                  height: height * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/buildings.jpg'),
                          fit: BoxFit.cover)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$2.500',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          '   /Per 10 Sqft',
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(
                            right: width * 0.025, left: width * 0.025),
                        width: width * 0.35,
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_note,
                              color: Colors.white,
                            ),
                            Text(
                              '  Edit profile',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DetailsContainer(
                      icon: Icon(
                        Icons.king_bed_rounded,
                      ),
                      text: '4 Bedrooms',
                    ),
                    DetailsContainer(
                      icon: Icon(
                        Icons.bathtub,
                      ),
                      text: '4 Bathroom',
                    ),
                    DetailsContainer(
                      icon: Icon(
                        Icons.soup_kitchen,
                      ),
                      text: '2 Kitchen',
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Descriptions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Text(
                  'Description the pattren of narrayive development that aims to make vivid a place, object...',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProfileWidget(
                    image: 'assets/images/nour.jpeg',
                    name: 'Nour Bendary',
                    email: 'nourhassan@gmail.com'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              return BottomSheetCustom();
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
              ],
            );
          }),
    );
  }
}
