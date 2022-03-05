import 'package:epitech_flutter/constant.dart';
import 'package:epitech_flutter/models/products.dart';
import 'package:epitech_flutter/size_config.dart';
import 'package:flutter/material.dart';

import 'home_header.dart';
import 'product_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenWidth(20)),
          const HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(30)),
          Wrap(
            spacing: 10,
            runSpacing: 20,
            children: [
              ...List.generate(products.length,
                  (index) => ProductCard(product: products[index]))
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
        ],
      ),
    ));
  }
}
