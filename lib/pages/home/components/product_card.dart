import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/products.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRation = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRation;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(140),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.02,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(20)),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(product.images[0]),
            ),
          ),
          Text(
            product.title,
            style: const TextStyle(color: Colors.black),
            maxLines: 2,
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                fontWeight: FontWeight.w600,
                color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}