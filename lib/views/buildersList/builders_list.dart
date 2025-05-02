import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:real_estate_app/core/action.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';
import 'package:real_estate_app/core/portfolio_container.dart';
import 'package:real_estate_app/core/profile_widget.dart';
import 'package:real_estate_app/core/search_field.dart';
import 'package:real_estate_app/views/buildersProfile/builders_profile.dart';

class BuildersList extends StatefulWidget {
  const BuildersList({super.key});

  @override
  State<BuildersList> createState() => _BuildersListState();
}

class _BuildersListState extends State<BuildersList> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: DefaultAppBar(
          onTap: () {
            Navigator.pop(context);
          },
          title: "All Builders",
          hasAction: false),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: width * 0.04,
                right: width * 0.04,
                top: height * 0.02,
                bottom: height * 0.02),
            child: const SearchField(
              hintText: 'Ma..',
              containerWidth: 0.9,
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
                padding: EdgeInsets.only(
                  left: width * 0.05,
                  right: width * 0.05,
                ),
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: const BuildersProfile(),
                            withNavBar: false,
                          );
                        },
                        child: ProfileWidget(
                            widget: ActionContainer(
                              containerColor:
                                  const Color.fromARGB(255, 218, 237, 230),
                              iconColor: const Color(0xFF29D697),
                              icon: const Icon(Icons.call),
                              onPressed: () {},
                            ),
                            image: 'assets/images/nour.jpeg',
                            name: 'Nour Bendary',
                            email: 'nourhassan@gmail.com'),
                      ),
                      SizedBox(height: height * 0.02),
                      const PortfolioContainer(),
                      SizedBox(height: height * 0.02),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
