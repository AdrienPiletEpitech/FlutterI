import 'package:epitech_flutter/pages/home/components/search_bar.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchBar(),
          IconBtnWithCounter(
              icon: Icons.shopping_cart,
              press: () {}
          ),
          IconBtnWithCounter(
              icon: Icons.doorbell_outlined,
              numOfItems: 3,
              press: () {}
          ),
        ],
      ),
    );
  }
}