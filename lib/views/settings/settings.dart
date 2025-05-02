import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';
import 'package:real_estate_app/views/NotificationScreen/notification_screen.dart';
import 'package:real_estate_app/views/TransactionDetails/transaction_details..dart';
import 'package:real_estate_app/views/contactUs/contact_us.dart';
import 'package:real_estate_app/views/history/history.dart';
import 'package:real_estate_app/views/mainLayOut/main_lay_out.dart';
import 'package:real_estate_app/views/settings/widgets/listTileCustom.dart';
import 'package:real_estate_app/views/termsCondition/terms_condition.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Settings',
        hasAction: false,
        onTap: () {
          PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: const MainLayOut(),
            withNavBar: false,
          );
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Listtilecustom(
              hastrailing: true,
              containerColor: const Color.fromARGB(255, 248, 231, 205),
              icon: const Icon(
                Icons.person,
                color: Colors.orange,
              ),
              title: 'Personal Profile',
              onTap: () {},
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Listtilecustom(
              hastrailing: true,
              containerColor: Colors.green.shade50,
              icon: Icon(
                Icons.key,
                color: textColor,
              ),
              title: 'Change Password',
              onTap: () {},
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Listtilecustom(
              hastrailing: true,
              containerColor: const Color.fromARGB(255, 241, 222, 221),
              icon: Icon(
                Icons.privacy_tip,
                color: secondaryColor,
              ),
              title: 'Privacy Policy',
              onTap: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: const TermsAndCondition(),
                  withNavBar: false,
                );
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Listtilecustom(
              hastrailing: true,
              containerColor: Colors.green.shade50,
              icon: const Icon(
                Icons.data_saver_on,
                color: Color.fromARGB(255, 91, 194, 95),
              ),
              title: 'Data Saver',
              onTap: () {},
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Listtilecustom(
              hastrailing: true,
              containerColor: const Color.fromARGB(255, 228, 233, 237),
              icon: Icon(
                Icons.notifications,
                color: primaryColor,
              ),
              title: 'Notifications',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NotificationScreen(),
                  ),
                );
              },
            ),
            Listtilecustom(
              hastrailing: true,
              containerColor: const Color.fromARGB(255, 243, 220, 187),
              icon: const Icon(
                Icons.history,
                color: Color.fromARGB(255, 220, 133, 2),
              ),
              title: 'History',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const History(),
                  ),
                );
              },
            ),
            Listtilecustom(
              hastrailing: true,
              containerColor: const Color.fromARGB(255, 216, 207, 232),
              icon: const Icon(
                Icons.contact_page,
                color: Color.fromARGB(255, 131, 23, 233),
              ),
              title: 'Contact Us',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ContactUs(),
                  ),
                );
              },
            ),
            Listtilecustom(
              hastrailing: true,
              containerColor: const Color.fromARGB(255, 228, 233, 237),
              icon: Icon(
                Icons.payments,
                color: primaryColor,
              ),
              title: 'Transaction Details',
              onTap: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: const TransactionDetails(),
                  withNavBar: false,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Listtilecustom(
                title: "Log Out",
                icon: Icon(
                  Icons.logout,
                  color: sliderColor,
                ),
                containerColor: const Color.fromARGB(255, 227, 249, 251),
                onTap: () {},
                hastrailing: false)
          ],
        ),
      ),
    );
  }
}
