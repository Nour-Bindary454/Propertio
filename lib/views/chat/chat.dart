import 'package:flutter/material.dart';
import 'package:real_estate_app/core/action.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/profile_widget.dart';
import 'package:real_estate_app/views/audioCall/audio_call.dart';
import 'package:real_estate_app/views/videoCall/video_call.dart';

class Chat extends StatefulWidget {
  const Chat(
      {super.key,
      required this.image,
      required this.name,
      required this.LastMessage});
  final String image;
  final String name;
  final String LastMessage;

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<String> image = [
    'assets/images/nour.jpeg',
    'assets/images/cats.jpg',
    'assets/images/cat.jpg',
    'assets/images/person.png',
    'assets/images/nour.jpeg',
    'assets/images/cats.jpg',
    'assets/images/cat.jpg',
    'assets/images/person.png',
    'assets/images/cats.jpg',
    'assets/images/cat.jpg',
  ];
  List<String> name = [
    'Nour Bendary',
    'Aya Hassan',
    'Ali Ahmed',
    'Kholoud Nageh',
    'Nour Samir',
    'Rahma',
    'Ahmed',
    'Hossam',
    'salma',
    'Mohamed',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: primaryColor,
            )),
        title: ProfileWidget(
            image: widget.image, name: widget.name, email: widget.LastMessage),
        actions: [
          ActionContainer(
              containerColor: const Color.fromARGB(102, 187, 210, 229),
              iconColor: primaryColor,
              icon: const Icon(Icons.call),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AudioCall(
                      image: widget.image,
                      name: widget.name,
                    ),
                  ),
                );
              }),
          const SizedBox(
            width: 5,
          ),
          ActionContainer(
              containerColor: const Color.fromARGB(102, 187, 210, 229),
              iconColor: primaryColor,
              icon: const Icon(Icons.videocam_rounded),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoCall(
                      callerImage: widget.image,
                      callerName: widget.name,
                    ),
                  ),
                );
              }),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            right: width * 0.085,
            bottom: 20,
            child: Container(
              padding: const EdgeInsets.only(right: 15),
              alignment: Alignment.centerRight,
              width: width * 0.2,
              height: height * 0.09,
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(20)),
              child: const Icon(
                Icons.send,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: width * 0.085,
            bottom: 20,
            child: Container(
                width: width * 0.7,
                height: height * 0.09,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        width: width * 0.44,
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type something...',
                          ),
                        )),
                    Container(
                      width: width * 0.1,
                      height: width * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(104, 201, 241, 226)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          '+',
                          style: TextStyle(color: textColor, fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.1,
                      height: width * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 255, 244, 212)),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.emoji_emotions_rounded,
                            color: Colors.amber,
                            size: 17,
                          )),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
