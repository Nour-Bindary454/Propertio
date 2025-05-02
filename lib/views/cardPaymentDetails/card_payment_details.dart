import 'package:flutter/material.dart';

import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';
import 'package:real_estate_app/core/image_slider.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CardPaymentDetails extends StatefulWidget {
  const CardPaymentDetails({super.key});

  @override
  State<CardPaymentDetails> createState() => _CardPaymentDetailsState();
}

class _CardPaymentDetailsState extends State<CardPaymentDetails> {
  int selectedIndex = 0;
  List<String> text = ['Pay Builders', 'Rent House', 'Broker', 'Buy House'];
  List<double> amount = [142, 151, 142, 5.151];
  List<String> date = ['jan 9,2020', 'jan 4,2020', 'jan 2,2020', 'jan 1,2020'];
  List<Widget> icon = [
    const Icon(
      Icons.payment_rounded,
      color: Color.fromARGB(255, 38, 102, 41),
    ),
    const Icon(
      Icons.house_rounded,
      color: Colors.green,
    ),
    const Icon(
      Icons.person,
      color: Colors.orange,
    ),
    const Icon(
      Icons.home_work,
      color: Colors.blue,
    )
  ];
  List<Color> color = [
    const Color.fromARGB(95, 38, 102, 41),
    const Color.fromARGB(95, 76, 175, 79),
    const Color.fromARGB(95, 255, 153, 0),
    const Color.fromARGB(95, 33, 149, 243),
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Saved Card',
        hasAction: false,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(children: [
              const ImageSlider(),
              const SizedBox(
                height: 70,
              ),
              ToggleSwitch(
                activeBgColor:
                    selectedIndex == 0 ? [secondaryColor] : [secondaryColor],
                inactiveBgColor: selectedIndex == 1
                    ? const Color.fromARGB(255, 192, 189, 189)
                    : const Color.fromARGB(255, 192, 189, 189),
                minWidth: 150,
                initialLabelIndex: selectedIndex,
                totalSwitches: 2,
                labels: const ['Expenses', 'Incoming'],
                radiusStyle: true,
                onToggle: (index) {
                  setState(() {
                    selectedIndex = index!;
                  });
                },
              ),
              if (selectedIndex == 0) ...[
                SizedBox(
                  height: 300,
                  width: width,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: icon.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: color[index],
                            ),
                            child: icon[index],
                          ),
                          title: Text(
                            text[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            date[index],
                            style: const TextStyle(color: Colors.grey),
                          ),
                          trailing: Text(
                            '\$${amount[index].toString()}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        );
                      }),
                )
              ] else if (selectedIndex == 1) ...[
                const Column(
                  children: [],
                ),
              ],
            ]);
          }),
    );
  }
}
