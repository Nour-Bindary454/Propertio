import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';
import 'package:real_estate_app/core/default_button.dart';
import 'package:real_estate_app/core/search_field.dart';
import 'package:real_estate_app/views/mainLayOut/main_lay_out.dart';
import 'package:real_estate_app/views/totalEstimation/total_estimation.dart';

class SearchEstimatedCost extends StatefulWidget {
  const SearchEstimatedCost({super.key});

  @override
  State<SearchEstimatedCost> createState() => _SearchEstimatedCostState();
}

class _SearchEstimatedCostState extends State<SearchEstimatedCost> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Search Estimated Cost',
        hasAction: false,
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MainLayOut()));
        },
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: width * 0.04,
                      right: width * 0.04,
                      top: height * 0.02,
                      bottom: height * 0.02),
                  child: const SearchField(
                    hintText: 'Duplex houses',
                    containerWidth: 0.9,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Duplex houses',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Text(
                            'See All',
                            style: TextStyle(color: primaryColor),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: primaryColor,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 100,
                  width: width,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/buildings/photo_5969930780127904559_x.jpg'),
                                fit: BoxFit.cover)),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Building',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: secondaryColor),
                      ),
                      const Text(
                        'Outside Wall',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.orange),
                      ),
                      Text(
                        'Others',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: textColor),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: width * 0.9,
                  height: 230,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/buildings/photo_5969930780127904567_x.jpg'),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Duplex house (2000 sqft)',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                DefaultButton(
                    text: 'Estimate Cost',
                    onTap: () {
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: TotalEstimation(),
                        withNavBar: false,
                      );
                    },
                    buttonWidth: width * 0.9),
              ],
            );
          }),
    );
  }
}
