import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../models/products.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, required this.product,required this.press,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10),
        shadowColor: Colors.blueGrey,
        elevation: 5,
          child : GestureDetector(
            onTap: press,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: getProportionateScreenWidth(100), child: Image.asset(product.images[0])),
                SizedBox(width: getProportionateScreenWidth(5)),
                Text(
                  product.title,
                  style: const TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
                SizedBox(width: getProportionateScreenWidth(15)),
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: appColor),
                ),
                IconButton( icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                  print("Pressed");
                  },
                ),
              ],
            ),
          ),
    );
  }
}