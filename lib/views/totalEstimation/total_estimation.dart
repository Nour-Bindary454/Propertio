import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';
import 'package:real_estate_app/core/default_button.dart';
import 'package:real_estate_app/views/buildersList/builders_list.dart';

class TotalEstimation extends StatefulWidget {
  const TotalEstimation({super.key});

  @override
  State<TotalEstimation> createState() => _TotalEstimationState();
}

class _TotalEstimationState extends State<TotalEstimation> {
  List<String> images = [
    'assets/images/bricks.jpg',
    'assets/images/rods.jpg',
    'assets/images/sand.jpg',
    'assets/images/cemant.jpg',
    'assets/images/bricks.jpg',
  ];

  List<String> titles = [
    'Bricks total',
    'Rods total',
    'Sand total',
    'Cement total',
    'Bricks total',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Total Estimation',
        hasAction: false,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(left: 27, right: 27),
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15, right: 7),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    images[index],
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Container(
                          width: width * 0.52,
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    titles[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    '\$30000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              Text(
                                '200.000Pcs (per pcs \$1.5)',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: greyTextColor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              width: width,
              height: height * 0.09,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DefaultButton(
                      text: 'Hire Builders',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BuildersList()));
                      },
                      buttonWidth: width * 0.46),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Cost',
                        style: TextStyle(
                            color: greyTextColor, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '\$50,00,000',
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
