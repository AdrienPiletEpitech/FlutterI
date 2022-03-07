import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../models/products.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10),
        shadowColor: Colors.blueGrey,
        elevation: 5,
          child : Row(
            children: [
              SizedBox(width: getProportionateScreenWidth(140), child: Image.asset(product.images[0])),
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
              ),
            ],
          ),
    );
  }
}