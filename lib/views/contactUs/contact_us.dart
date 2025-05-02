import 'package:flutter/material.dart';
import 'package:real_estate_app/core/default_button.dart';
import 'package:real_estate_app/core/stack_cust.dart';
import 'package:real_estate_app/core/text_field_custom.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return StackCust(
      upperWidget: Container(
        margin: const EdgeInsets.all(12),
        alignment: Alignment.centerLeft,
        width: width,
        height: height * 0.1,
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            )),
      ),
      containerheight: 0.75,
      widget: Column(
        children: [
          const Text(
            'Contact Us',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: height * 0.02),
          const Column(
            children: [
              TextFieldCustom(
                image: 'assets/images/person.png',
                hintText: 'Full Name',
                containrColor: Color.fromARGB(255, 243, 220, 187),
                iconColor: Color.fromARGB(255, 220, 133, 2),
              ),
              TextFieldCustom(
                image: 'assets/images/email.png',
                hintText: 'Email Address',
                containrColor: Color.fromARGB(255, 158, 192, 159),
                iconColor: Color.fromARGB(255, 11, 117, 15),
              ),
              TextFieldCustom(
                image: 'assets/images/lock.png',
                hintText: 'Phone Number',
                containrColor: Color.fromARGB(255, 216, 207, 232),
                iconColor: Color.fromARGB(255, 131, 23, 233),
              ),
            ],
          ),
          Container(
            width: width * 0.77,
            height: height * 0.19,
            padding: EdgeInsets.only(left: width * 0.02),
            margin: EdgeInsets.all(width * 0.017),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Message',
                ),
              ),
            ),
          ),
          SizedBox(
            height: width * 0.04,
          ),
          DefaultButton(text: 'Send', buttonWidth: width * 0.8, onTap: () {}),
        ],
      ),
    );
  }
}
