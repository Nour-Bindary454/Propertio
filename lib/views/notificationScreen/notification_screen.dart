import 'package:flutter/material.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: DefaultAppBar(
        title: 'Notification',
        hasAction: false,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
        scrollDirection: Axis.vertical,
        itemCount: 15,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(27)),
            margin: const EdgeInsets.only(bottom: 15),
            height: 80,
            child: ListTile(
              onTap: () {},
              minTileHeight: 80,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 226, 226, 255),
                ),
                child: Icon(
                  Icons.notifications,
                  color: primaryColor,
                ),
              ),
              subtitle: const Text('Seller has accepted your offer',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              title: const Text(
                'Seller',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
          );
        },
      ),
    );
  }
}
