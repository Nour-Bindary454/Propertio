import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';

class OnBording extends StatefulWidget {
  const OnBording({super.key});

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  // double calcWidth(double w) {
  //   double width = MediaQuery.of(context).size.width;
  //   double elementWidth = ((w / width) * 100) / 100;
  //   return elementWidth;
  // }

  // double calcHeight(double h) {
  //   double height = MediaQuery.of(context).size.width;
  //   double elementHeight = ((h / height) * 100) / 100;
  //   return elementHeight;
  // }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
            width: width,
            height: height * 0.77,
            // width: calcWidth(422),
            // height: calcHeight(446),
            child: Image.asset(
              'assets/images/Illustration.png',
              fit: BoxFit.fill,
            )),
        Container(
            alignment: Alignment.center,
            width: width,
            child: const Text(
              'Buy your Dream Home',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            )),
        SizedBox(
          height: height * 0.07,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('login');
                },
                child: Text(
                  'Skip',
                  style: TextStyle(fontSize: 20, color: greyTextColor),
                )),
            SizedBox(
              width: width * 0.6,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'orbording');
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: primaryColor, fontSize: 20),
                )),
          ],
        )
      ]),
    );
  }
}
