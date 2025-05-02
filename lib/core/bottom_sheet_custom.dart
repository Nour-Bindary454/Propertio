import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_button.dart';
import 'package:real_estate_app/views/artificialApartment/widgets/text_field_icon.dart';

class BottomSheetCustom extends StatefulWidget {
   BottomSheetCustom({super.key});

  @override
  State<BottomSheetCustom> createState() => _BottomSheetCustomState();
}

class _BottomSheetCustomState extends State<BottomSheetCustom> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, setState) {
        return SizedBox(
          width: width,
          child: Column(
            children: [
              SizedBox(
                width: 60,
                child: Divider(
                  color: primaryColor,
                ),
              ),
              const Text(
                'Get Schedule',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Title',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFieldIcon(
                  isWidgetEmpty: true,
                  textFieldWidth: width * 0.5,
                  containerWidth: width * 0.9,
                  hintText: 'Metting Name',
                  icon: const Icon(Icons.calendar_month)),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Choose Date',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFieldIcon(
                  isWidgetEmpty: false,
                  textFieldWidth: width * 0.5,
                  containerWidth: width * 0.9,
                  hintText: '5 Jan, 2022',
                  icon: const Icon(Icons.calendar_month)),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Start Time',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      TextFieldIcon(
                          isWidgetEmpty: false,
                          textFieldWidth: width * 0.2,
                          containerWidth: width * 0.4,
                          hintText: '11:30 Am',
                          icon: const Icon(Icons.watch_later_rounded)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'End Time',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      TextFieldIcon(
                          isWidgetEmpty: false,
                          textFieldWidth: width * 0.2,
                          containerWidth: width * 0.4,
                          hintText: '11:30 Am',
                          icon: const Icon(Icons.watch_later_rounded)),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
          //        Checkbox(       مش راضي يشغل ال setstate
//   value: isChecked,
//   onChanged: (bool? newValue) {
//     setState(() {
//       isChecked = newValue!;
//     });
//   },
// ),
                  const Text(
                    'Notify Me',
                    style: TextStyle(
                        color: Color.fromARGB(255, 117, 115, 115)),
                  )
                ],
              ),
              DefaultButton(
                  text: 'Ask for Schedule',
                  onTap: () {},
                  buttonWidth: width * 0.9)
            ],
          ),
        );
      },
    );
    
  }
}
