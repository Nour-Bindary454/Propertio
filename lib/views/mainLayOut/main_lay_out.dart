import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/views/chats/chats.dart';

import 'package:real_estate_app/views/home/home.dart';
import 'package:real_estate_app/views/mainLayOut/widgets/selectedIcon.dart';
import 'package:real_estate_app/views/savedProperty/saved_property.dart';
import 'package:real_estate_app/views/searchEstimatedCost/search_estimated_cost.dart';
import 'package:real_estate_app/views/settings/settings.dart';

class MainLayOut extends StatefulWidget {
  const MainLayOut({super.key});

  @override
  State<MainLayOut> createState() => _MainLayOutState();
}

class _MainLayOutState extends State<MainLayOut> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const Home(),
      const SavedProperty(),
      const SearchEstimatedCost(),
      const Chats(),
      const Settings(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: const ImageIcon(
          AssetImage(
            'assets/images/icons/Home.png',
          ),
        ),
        icon: const SelectedIcon(
          icon: 'assets/images/icons/Home.png',
        ),
        inactiveColorPrimary: primaryColor,
        activeColorPrimary: primaryColor,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: const ImageIcon(
          AssetImage(
            'assets/images/icons/Bookmark.png',
          ),
        ),
        icon: const SelectedIcon(
          icon: 'assets/images/icons/Bookmark.png',
        ),
        inactiveColorPrimary: primaryColor,
        activeColorPrimary: primaryColor,
      ),
      PersistentBottomNavBarItem(
        icon: const ImageIcon(
          AssetImage(
            'assets/images/icons/icon.png',
          ),
          color: Colors.white,
        ),
        inactiveColorPrimary: primaryColor,
        activeColorPrimary: primaryColor,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: const ImageIcon(
          AssetImage(
            'assets/images/icons/Chat.png',
          ),
        ),
        icon: const SelectedIcon(
          icon: 'assets/images/icons/Chat.png',
        ),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: primaryColor,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: const ImageIcon(
          AssetImage(
            'assets/images/icons/Setting.png',
          ),
        ),
        icon: const SelectedIcon(
          icon: 'assets/images/icons/Setting.png',
        ),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: primaryColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      navBarHeight:
          MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : height * 0.075,
      hideNavigationBarWhenKeyboardAppears: true,
      decoration: NavBarDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        colorBehindNavBar: backgroundColor,
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
