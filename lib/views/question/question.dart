// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_button.dart';
import 'package:real_estate_app/core/lined_button.dart';
import 'package:real_estate_app/views/mainLayOut/main_lay_out.dart';
import 'package:real_estate_app/views/matchedProperty/matched_property.dart';

class Question extends StatefulWidget {
  const Question({super.key});
  final double currentRangeValues = 0.0;
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  RangeValues currentValue = const RangeValues(500, 10000);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: primaryColor,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.close_rounded, color: primaryColor)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(width * 0.05),
        width: width,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: height * 0.05),
              alignment: Alignment.centerLeft,
              child: const Text(
                'What is your budget?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.24,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Price Range',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$500-\$10000',
                        style: TextStyle(color: sliderColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: height * 0.0014,
                      valueIndicatorColor: Colors.black54,
                    ),
                    child: RangeSlider(
                      activeColor: sliderColor,
                      values: currentValue,
                      min: 500,
                      max: 10000,
                      divisions: 9500,
                      onChanged: (RangeValues values) {
                        setState(() {
                          currentValue = values;
                        });
                      },
                    ),
                  ),
                  Text(
                    '\$${currentValue.start.round()}        \$${currentValue.end.round()}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            const Text(
              'Where do you want to buy?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: width * 0.9,
              height: height * 0.15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LinedButton(
                    onTap: () {},
                    text: 'Near',
                    buttonHeight: height * 0.07,
                    buttonWidth: width * 0.35,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor,
                        foregroundColor: Colors.white,
                        fixedSize: Size(width * 0.35, height * 0.07),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: const Text('Outside'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            DefaultButton(
                text: 'Show Properties',
                buttonWidth: width * 0.8,
                onTap: () {
                  Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => const MatchedProperty(),
  ),
);

                }),
            SizedBox(
              height: height * 0.019,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => const MainLayOut(),
  ),
);

                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
