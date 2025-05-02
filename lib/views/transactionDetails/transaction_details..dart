import 'package:flutter/material.dart';
import 'package:real_estate_app/core/card.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_button.dart';
import 'package:real_estate_app/core/stack_cust.dart';
import 'package:real_estate_app/views/cardPaymentDetails/card_payment_details.dart';
import 'package:real_estate_app/views/savedCard/saved_card.dart';

class TransactionDetails extends StatefulWidget {
  const TransactionDetails({super.key});

  @override
  State<TransactionDetails> createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  List<String> TransactionDetails = [
    'Token',
    'Security Deposit',
    'Service Charge',
  ];
  List<String> TransactionAmount = [
    '\$450',
    '\$120',
    '\$90',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        ),
        title: const Text(
          'Transaction details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: StackCust(
        containerheight: 0.75,
        upperWidget: Container(
          margin: EdgeInsets.only(left: width * 0.07),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/nour.jpeg'),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const SizedBox(
                height: 75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nour Hassan',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                    Text(
                      'nourhassan@gmail.com',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 182, 181, 181)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        widget: Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Cards(),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: width,
                alignment: Alignment.centerLeft,
                child: const Text('Transaction',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(10),
                          width: width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                TransactionDetails[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                TransactionAmount[index],
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        );
                      })),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DefaultButton(
                      text: 'Saved Card',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SavedCard()));
                      },
                      buttonWidth: width * 0.45),
                  DefaultButton(
                      text: 'Payment Details',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CardPaymentDetails()));
                      },
                      buttonWidth: width * 0.45),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
