import 'package:epitech_flutter/components/default_button.dart';
import 'package:epitech_flutter/constant.dart';
import 'package:epitech_flutter/size_config.dart';
import 'package:flutter/material.dart';

import '../../../models/products.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              width: getProportionateScreenWidth(238),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(product.images[0]),
              ),
            ),
            Row(
              children: [],
            )
          ],
        ),
        TopRoundedContainer(
          child: Column(children: [ProductDescription(product: product),
          DefaultButton(text: "Add to Cart", press: () {})]),
        )
      ],
    );
  }
}
