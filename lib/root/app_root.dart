import 'package:flutter/material.dart';

import 'package:real_estate_app/views/buildersList/builders_list.dart';
import 'package:real_estate_app/views/cardPaymentDetails/card_payment_details.dart';
import 'package:real_estate_app/views/SearchMap/search_map.dart';
import 'package:real_estate_app/views/TransactionDetails/transaction_details..dart';
import 'package:real_estate_app/views/artificialApartment/artificial_apartment.dart';
import 'package:real_estate_app/views/buildersProfile/builders_profile.dart';
import 'package:real_estate_app/views/chats/chats.dart';
import 'package:real_estate_app/views/contactUs/contact_us.dart';
import 'package:real_estate_app/views/history/history.dart';
import 'package:real_estate_app/views/home/home.dart';
import 'package:real_estate_app/views/login/login.dart';

import 'package:real_estate_app/views/matchedProperty/matched_property.dart';
import 'package:real_estate_app/views/notificationScreen/notification_screen.dart';
import 'package:real_estate_app/views/onBording/on_bording.dart';
import 'package:real_estate_app/views/orBording/or_Bording.dart';
import 'package:real_estate_app/views/ownerProfile/owner_profile.dart';

import 'package:real_estate_app/views/question/question.dart';
import 'package:real_estate_app/views/register/register.dart';
import 'package:real_estate_app/views/savedCard/saved_card.dart';
import 'package:real_estate_app/views/savedProperty/saved_property.dart';
import 'package:real_estate_app/views/searchEstimatedCost/search_estimated_cost.dart';
import 'package:real_estate_app/views/settings/settings.dart';
import 'package:real_estate_app/views/splash/splash.dart';
import 'package:real_estate_app/views/termsCondition/terms_condition.dart';
import 'package:real_estate_app/views/totalEstimation/total_estimation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'onbording': (context) => const OnBording(),
        'splash': (context) => const Splash(),
        'orbording': (context) => const OrBording(),
        'login': (context) => const Login(),
        'register': (context) => const Register(),
        'contactus': (context) => const ContactUs(),
        'question': (context) => const Question(),
        'home': (context) => const Home(),
        'termsandcondition': (context) => const TermsAndCondition(),
        'ownerprofile': (context) => const OwnerProfile(),
        'matchedproperty': (context) => const MatchedProperty(),
        'buildersprofile': (context) => const BuildersProfile(),
        'searchmap': (context) => const SearchMap(),
        'builderslist': (context) => const BuildersList(),
        'savedproperty': (context) => const SavedProperty(),
        'chats': (context) => const Chats(),
        'settings': (context) => const Settings(),
        'history': (context) => const History(),
        'notification': (context) => const NotificationScreen(),
        'transactiondetails': (context) => const TransactionDetails(),
        'apartmentdetails': (context) => const ArtificialApartment(),
        'searchestimatedcost': (context) => const SearchEstimatedCost(),
        'totalestimation': (context) => const TotalEstimation(),
        'savedcard': (context) => const SavedCard(),
        'cardpaymentdetails': (context) => const CardPaymentDetails(),
      },
      initialRoute: 'splash',
      //home: Card(),
    );
  }
}
