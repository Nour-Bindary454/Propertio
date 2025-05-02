import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';

class OrBording extends StatefulWidget {
  const OrBording({super.key});

  @override
  State<OrBording> createState() => _OrBordingState();
}

class _OrBordingState extends State<OrBording> {
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
            child: Image.asset(
              'assets/images/llll.jpg',
              fit: BoxFit.fill,
            )),
        Container(
            alignment: Alignment.center,
            width: width,
            child: const Text(
              'Sale Your Property',
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
                  Navigator.of(context).pushReplacementNamed('login');
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
