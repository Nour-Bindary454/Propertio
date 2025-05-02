import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/stack_cust.dart';

class SearchMap extends StatefulWidget {
  const SearchMap({super.key});

  @override
  State<SearchMap> createState() => _SearchMapState();
}

class _SearchMapState extends State<SearchMap> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: StackCust(
          containerheight: 0.75,
          upperWidget: Container(
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    )),
                Container(
                  width: width * 0.8,
                  height: height * 0.08,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 236, 236),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/icons/search.png',
                        width: width * 0.1,
                        color: primaryColor,
                      ),
                      SizedBox(
                          width: width * 0.45,
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Bashundhora R/A, K BI',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 206, 206, 206)),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          widget: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/maps.jpg'),
                      fit: BoxFit.cover)))),
    );
  }
}
