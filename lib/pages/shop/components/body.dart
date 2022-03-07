import 'package:epitech_flutter/pages/shop/components/productCard.dart';
import 'package:epitech_flutter/size_config.dart';
import 'package:flutter/material.dart';
import '../../../models/products.dart';
import '../../../widget/socialMediaIcons_widget.dart';
import '../../product_details/product_details.dart';
import 'headerShop.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
            child: SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Color(0xFFDFDFDF)),
                      left: BorderSide(width: 1.0, color: Color(0xFFDFDFDF)),
                      right: BorderSide(width: 1.0, color: Color(0xFF7F7F7F)),
                      bottom: BorderSide(width: 1.0, color: Color(0xFF7F7F7F)),
                    ),
                    color: Color(0xFFBFBFBF),
                  ),
                  child: Column(
                    children: [
                      Wrap(
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
                ),
              ),
            );
  }
}
