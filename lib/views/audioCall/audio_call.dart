import 'package:flutter/material.dart';
import 'package:real_estate_app/core/call_row.dart';
import 'package:real_estate_app/core/colors.dart';

class AudioCall extends StatefulWidget {
  const AudioCall({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  State<AudioCall> createState() => _AudioCallState();
}

class _AudioCallState extends State<AudioCall> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    widget.image,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            width: width,
            decoration:
                const BoxDecoration(color: Color.fromARGB(175, 170, 169, 169)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Audio Call With',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: width * 0.3,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(widget.image), fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  widget.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  '10:12',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            top: 45,
            left: 20,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: const Color.fromARGB(134, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: primaryColor,
                  )),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: height * 0.19,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: CallRow(
                  onpressedMute: () {},
                  onpressedCall: () {},
                  onpressedvideo: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
