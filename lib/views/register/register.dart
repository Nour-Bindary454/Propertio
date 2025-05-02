import 'package:flutter/material.dart';

import 'package:real_estate_app/core/default_button.dart';
import 'package:real_estate_app/core/icons.dart';
import 'package:real_estate_app/core/stack_cust.dart';

import 'package:real_estate_app/core/text_field_custom.dart';

import 'package:real_estate_app/views/question/question.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return StackCust(
      containerheight: 0.84,
      widget: Column(
        children: [
          SizedBox(height: height * 0.05),
          const Text(
            'Register',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: height * 0.02),
          const Column(
            children: [
              TextFieldCustom(
                image: 'assets/images/person.png',
                hintText: 'Username',
                containrColor: Color.fromARGB(255, 243, 220, 187),
                iconColor: Color.fromARGB(255, 220, 133, 2),
              ),
              TextFieldCustom(
                image: 'assets/images/email.png',
                hintText: 'Email',
                containrColor: Color.fromARGB(255, 158, 192, 159),
                iconColor: Color.fromARGB(255, 11, 117, 15),
              ),
              TextFieldCustom(
                image: 'assets/images/lock.png',
                hintText: 'Password',
                containrColor: Color.fromARGB(255, 216, 207, 232),
                iconColor: Color.fromARGB(255, 131, 23, 233),
              ),
            ],
          ),
          SizedBox(height: height * 0.15),
          DefaultButton(
              text: 'Register',
              buttonWidth: width * 0.8,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>const Question(),
                  ),
                );
              }),
          SizedBox(height: height * 0.07),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginIcons(
                  image: 'assets/images/icons/facebook-removebg-preview.png',
                  size: 0.1,
                  onTap: () {}),
              SizedBox(width: width * 0.03),
              LoginIcons(
                  image: 'assets/images/icons/google-removebg-preview.png',
                  size: 0.19,
                  onTap: () {}),
              SizedBox(
                width: width * 0.03,
              ),
              LoginIcons(
                  image: 'assets/images/icons/apple.png',
                  size: 0.19,
                  onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
