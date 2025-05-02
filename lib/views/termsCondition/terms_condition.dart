import 'package:flutter/material.dart';
import 'package:real_estate_app/core/default_appbar.dart';

import 'package:real_estate_app/views/termsCondition/widgets/custom_text.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: 'Terms of Service',
        hasAction: false,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: Expanded(
        child: ListView.builder(
            padding: const EdgeInsets.all(25),
            scrollDirection: Axis.vertical,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const CustomText(
                    hasSecGreyText: true,
                    secGreyText:
                        'lorem ipsum dolor sit amet consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur',
                    boldText: 'Terms',
                    greyText:
                        'lorem ipsum dolor sit amet consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur',
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  const CustomText(
                    hasSecGreyText: true,
                    secGreyText:
                        'lorem ipsum dolor sit amet consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur',
                    boldText: 'User License',
                    greyText:
                        'lorem ipsum dolor sit amet consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur',
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  const CustomText(
                    hasSecGreyText: false,
                    boldText: 'Our Privacy Policy',
                    greyText:
                        'lorem ipsum dolor sit amet consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget aliquam Lorem ipsum dolor sit amet, consectetur',
                  ),
                ],
              );
            }),
      ),
    );
  }
}
