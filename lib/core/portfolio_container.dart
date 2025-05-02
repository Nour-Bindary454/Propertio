import 'package:flutter/material.dart';

class PortfolioContainer extends StatefulWidget {
  const PortfolioContainer({super.key});

  @override
  State<PortfolioContainer> createState() => _PortfolioContainerState();
}

class _PortfolioContainerState extends State<PortfolioContainer> {
   List<String> portfolio = [
    'assets/images/buildings/photo_5969930780127904558_y.jpg',
    'assets/images/buildings/photo_5969930780127904562_x.jpg',
    'assets/images/buildings/photo_5969930780127904564_y.jpg',
    'assets/images/buildings/photo_5969930780127904566_x.jpg',
    'assets/images/buildings/photo_5969930780127904570_x.jpg',
    'assets/images/buildings/photo_5969930780127904559_x.jpg',
    'assets/images/buildings/photo_5969930780127904565_x.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  SizedBox(
                      height: width * 0.2,
                      child: ListView.builder(
                          padding: EdgeInsets.only(
                              right: width * 0.03, left: width * 0.03),
                          scrollDirection: Axis.horizontal,
                          itemCount: portfolio.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 20),
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        portfolio[index],
                                      ),
                                      fit: BoxFit.cover)),
                            );
                          }),
                    );
  }
}