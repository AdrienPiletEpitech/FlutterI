import 'package:flutter/material.dart';
import '../../../size_config.dart';

class ShopHeader extends StatelessWidget {
  const ShopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      );
  }
}
