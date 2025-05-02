import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_button.dart';
import 'package:real_estate_app/core/icons.dart';
import 'package:real_estate_app/core/stack_cust.dart';
import 'package:real_estate_app/views/login/widgets/text_field_login.dart';
import 'package:real_estate_app/views/mainLayOut/main_lay_out.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return StackCust(
      upperWidget: SizedBox(
        width: width,
        height: height * 0.35,
        child: Image.asset(
          'assets/images/whiteLogo.png',
        ),
      ),
      containerheight: 0.65,
      widget: Column(
        children: [
          const Text(
            'Login',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: height * 0.02),
          Container(
              padding: const EdgeInsets.all(15),
              width: width * 0.8,
              height: height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: const Column(
                children: [
                  TextFieldLogin(
                    image: 'assets/images/person.png',
                    hintText: 'Username',
                    containrColor: Color.fromARGB(255, 243, 220, 187),
                    iconColor: Color.fromARGB(255, 220, 133, 2),
                  ),
                  Divider(
                    thickness: 2,
                    color: Color.fromARGB(255, 222, 222, 222),
                  ),
                  TextFieldLogin(
                    image: 'assets/images/lock.png',
                    hintText: 'Password',
                    containrColor: Color.fromARGB(255, 216, 207, 232),
                    iconColor: Color.fromARGB(255, 131, 23, 233),
                  ),
                ],
              )),
          SizedBox(height: height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text('Forget Password?',
                      style: TextStyle(fontSize: 15, color: greyTextColor))),
              DefaultButton(
                  text: 'Login',
                  onTap: () {
                    Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => const MainLayOut(),
  ),
);

                  },
                  buttonWidth: 150)
            ],
          ),
          SizedBox(
            height: height * 0.07,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account?',
                  style: TextStyle(fontSize: 13, color: greyTextColor)),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('register');
                  },
                  child: Text('Register',
                      style: TextStyle(fontSize: 13, color: primaryColor))),
            ],
          ),
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
