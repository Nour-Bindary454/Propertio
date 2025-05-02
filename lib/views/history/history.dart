import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: DefaultAppBar(
        title: 'History',
        hasAction: false,
        onTap: () {
         Navigator.pop(context);
        },
      ),
      body: ListView.builder(
          padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(bottom: 15),
              width: width * 0.9,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/nour.jpeg')),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Nour Bendary',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text(
                          'Payment Pending',
                          style: TextStyle(fontSize: 12, color: greyTextColor),
                        ),
                      ],
                    ),
                  ]),
                  Icon(Icons.arrow_forward_ios, color: greyTextColor)
                ],
              ),
            );
          }),
    );
  }
}
