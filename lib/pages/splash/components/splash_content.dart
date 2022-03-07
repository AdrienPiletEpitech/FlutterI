import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text = "",
    this.image = "",
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text("ShopStyle",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: appColor,
              fontWeight: FontWeight.bold,
            )
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex:2),
        Image.asset("assets/images/logo.png",
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),),
      ],
    );
  }
}