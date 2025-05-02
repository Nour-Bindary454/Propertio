import 'package:flutter/material.dart';
import 'package:real_estate_app/core/action.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';
import 'package:real_estate_app/core/portfolio_container.dart';
import 'package:real_estate_app/core/profile_widget.dart';

class BuildersProfile extends StatefulWidget {
  const BuildersProfile({super.key});

  @override
  State<BuildersProfile> createState() => _BuildersProfileState();
}

class _BuildersProfileState extends State<BuildersProfile> {
  List<String> portfolio = [
    'assets/images/buildings/photo_5969930780127904558_y.jpg',
    'assets/images/buildings/photo_5969930780127904562_x.jpg',
    'assets/images/buildings/photo_5969930780127904564_y.jpg',
    'assets/images/buildings/photo_5969930780127904566_x.jpg',
    'assets/images/buildings/photo_5969930780127904570_x.jpg',
    'assets/images/buildings/photo_5969930780127904559_x.jpg',
    'assets/images/buildings/photo_5969930780127904565_x.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Builders Profile',
        hasAction: false,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: Stack(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: ProfileWidget(
                        image: 'assets/images/nour.jpeg',
                        name: 'Nour Bendary',
                        email: 'nourhassan@gmail.com',
                        widget: ActionContainer(
                          onPressed: () {},
                          iconColor: textColor,
                          icon: const Icon(Icons.call),
                          containerColor: const Color.fromARGB(255, 226, 245, 238),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: const Text(
                        'Portfolio',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const PortfolioContainer(),
                  ],
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height * 0.5,
              width: width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                image: DecorationImage(
                    image: AssetImage('assets/images/buildings.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          )
        ],
      ),
    );
  }
}
