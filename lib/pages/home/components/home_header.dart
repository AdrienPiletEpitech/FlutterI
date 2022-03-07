import 'package:epitech_flutter/pages/profile/profile.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../shop/shop.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Our products",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18), color: Colors.black),
          ),
          Row(
            children: [
              IconBtnWithCounter(icon: Icons.shopping_cart, press: () => Navigator.pushNamed(context, ShopPage.routeName)),
              SizedBox(width: getProportionateScreenWidth(10)),
              IconBtnWithCounter(icon: Icons.supervised_user_circle, press: () => Navigator.pushNamed(context, ProfilePage.routeName)),
            ],
          ),
        ],
      ),
    );
  }
}
