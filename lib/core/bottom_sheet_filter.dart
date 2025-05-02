import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_button.dart';
import 'package:real_estate_app/core/lined_button.dart';
import 'package:real_estate_app/core/slider.dart';
import 'package:real_estate_app/views/matchedProperty/matched_property.dart';

class BottomSheetFilter extends StatefulWidget {
  BottomSheetFilter({super.key});

  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        color: Colors.white,
      ),
      width: width,
      height: height * 0.65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            alignment: Alignment.center,
            child: const Text(
              'Filter',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            'Property types',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Property Size',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Text(
                'Up to 5000 sqft',
                style: TextStyle(
                    color: sliderColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const FilterSlider(),
          SizedBox(
            height: height * 0.01,
          ),
          const Text(
            'Property Price',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Low',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 96, 95, 95),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'High',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 96, 95, 95),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const FilterSlider(),
          SizedBox(
            height: height * 0.035,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LinedButton(
                  onTap: () {},
                  text: 'Reset',
                  buttonWidth: width * 0.35,
                  buttonHeight: 50),
              DefaultButton(
                  text: 'Check Availability',
                  buttonWidth: width * 0.5,
                  onTap: () {
                    
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: const MatchedProperty(), 
                      withNavBar: false
                    );
                  }),
            ],
          )
        ],
      ),
    );
  }
}
