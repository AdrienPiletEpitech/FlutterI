import 'package:epitech_flutter/pages/home/home.dart';
import 'package:epitech_flutter/pages/profile/profile.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../pages/shop/shop.dart';
import '../pages/sign_in/sign_in.dart';

BottomNavigationBar buildBottomNavigationBar(index, context) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: index,
    items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: appColor),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: "Profile",
          backgroundColor: appColor),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "Shopping cart",
          backgroundColor: appColor),
      BottomNavigationBarItem(
          icon: Icon(Icons.logout),
          label: "Log out",
          backgroundColor: appColor),
    ],
    onTap: (index) {
      switch (index) {
        case 0:
          Navigator.pushNamed(context, HomePage.routeName);
          break;
        case 1:
          Navigator.pushNamed(context, ProfilePage.routeName);
          break;
        case 2:
          Navigator.pushNamed(context, ShopPage.routeName);
          break;
        case 3:
          Navigator.pushNamed(context, SignInPage.routeName);
          break;
      }
    },
  );
}
