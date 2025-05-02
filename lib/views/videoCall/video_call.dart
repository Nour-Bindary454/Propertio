import 'package:flutter/material.dart';
import 'package:real_estate_app/core/call_row.dart';
import 'package:real_estate_app/core/colors.dart';

class VideoCall extends StatefulWidget {
  const VideoCall(
      {super.key, required this.callerImage, required this.callerName});
  final String callerImage;
  final String callerName;

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
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
                    widget.callerImage,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 55,
            right: 30,
            child: Container(
              height: width * 0.3,
              width: width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/cat.jpg'),
                      fit: BoxFit.cover)),
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
              height: height * 0.29,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    widget.callerName,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '10:00',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CallRow(
                      onpressedMute: () {},
                      onpressedCall: () {},
                      onpressedvideo: () {})
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
