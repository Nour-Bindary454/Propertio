import 'package:flutter/material.dart';
import 'package:real_estate_app/core/bottom_sheet_filter.dart';
import 'package:real_estate_app/core/colors.dart';



class FiltersButton extends StatefulWidget {
  const FiltersButton({
    super.key,
  });
  //final void Function() onTap;

  @override
  State<FiltersButton> createState() => _FiltersButtonState();
}

class _FiltersButtonState extends State<FiltersButton> {
  RangeValues currentValue = const RangeValues(200, 5000);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return StatefulBuilder(
                builder: (context, setState) {
                  return  BottomSheetFilter();
                },
              );
            });
      },
      child: Container(
        padding: EdgeInsets.only(right: width * 0.025, left: width * 0.025),
        width: width * 0.25,
        height: height * 0.08,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: const Color.fromARGB(107, 208, 208, 208)),
              child: Image.asset(
                'assets/images/icons/filtericon.png',
                color: primaryColor,
                width: 0.07 * width,
              ),
            ),
            const Text(
              'Filters',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
