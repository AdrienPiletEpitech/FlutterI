import 'package:epitech_flutter/models/products.dart';
import 'package:epitech_flutter/pages/product_details/product_details.dart';
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
            spacing: 25,
            runSpacing: 25,
            children: [
              ...List.generate(
                  products.length,
                  (index) => ProductCard(
                        product: products[index],
                        press: () => Navigator.pushNamed(
                            context, ProductDetails.routeName,
                            arguments: ProductDetailsArguments(
                                product: products[index])),
                      ))
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
        ],
      ),
    ));
  }
}
