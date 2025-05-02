import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:real_estate_app/core/action.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/profile_widget.dart';
import 'package:real_estate_app/core/search_field.dart';
import 'package:real_estate_app/views/chat/chat.dart';
import 'package:real_estate_app/views/mainLayOut/main_lay_out.dart';

import '../../core/default_appbar.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
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
  List<String> message = [
    'Hi how are you ?',
    'Hello',
    'Okay',
    'Bye',
    'Hi how are you ?',
    'Hello',
    'Okay',
    'Bye',
    'Okay',
    'Bye',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: DefaultAppBar(
          title: 'Messages',
          hasAction: false,
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: const MainLayOut(),
              withNavBar: false,
            );
          }),
      body: Container(
        padding: EdgeInsets.only(
          left: width * 0.04,
          right: width * 0.04,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SearchField(
                  hintText: 'Search...',
                  containerWidth: 0.7,
                ),
                ActionContainer(
                  onPressed: () {},
                  iconColor: textColor,
                  icon: const Icon(Icons.edit),
                  containerColor: const Color.fromARGB(126, 169, 237, 212),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: image.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: height * 0.02),
                    child: InkWell(
                      onTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: Chat(
                            image: image[index],
                            name: name[index],
                            LastMessage: message[index],
                          ),
                          withNavBar: false,
                        );
                      },
                      child: ProfileWidget(
                        image: image[index],
                        name: name[index],
                        email: message[index],
                        widget: const Text('12:20AM'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
