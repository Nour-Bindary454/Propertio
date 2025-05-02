import 'package:card_slider/card_slider.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/core/card.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  List<Widget> valuewidget = [];
  // List<String> cards = [
  //   'assets/images/visaone.png',
  //   'assets/images/visatwo.png',
  //   'assets/images/visathree.png'
  // ];
  List<Widget> cards = [
    const Cards(),
    const Cards(),
    const Cards(),
  ];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < cards.length; i++) {
      valuewidget.add(
        cards[i],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.3,
      child: CardSlider(
        cards: valuewidget,
        bottomOffset: 0.0008,
        itemDotWidth: 10,
        itemDotOffset: 1,
        itemDot: (itemDotWidth) {
          return Container(
              margin: const EdgeInsets.all(5),
              width: 8 + itemDotWidth,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 65, 171, 15),
              ));
        },
      ),
    );
  }
}
