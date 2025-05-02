import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';

class FilterSlider extends StatefulWidget {
  const FilterSlider({super.key});

  @override
  State<FilterSlider> createState() => _FilterSliderState();
}

class _FilterSliderState extends State<FilterSlider> {
  RangeValues currentValue = const RangeValues(200, 5000);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: height * 0.005,
        valueIndicatorColor: Colors.black54,
      ),
      child: RangeSlider(
        activeColor: sliderColor,
        values: currentValue,
        min: 200,
        max: 5000,
        divisions: 4799,
        onChanged: (RangeValues values) {
          setState(() {
            currentValue = values;
          });
        },
      ),
    );
  }
}
