import 'package:epitech_flutter/components/default_button.dart';
import 'package:epitech_flutter/constant.dart';
import 'package:epitech_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../sign_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10.0)),
            const Text(
              "Hello 👋",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Sign in with your email and your password",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            const SignForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialWidget(
                    imagePath: "assets/images/google.svg", press: () {}),
                SocialWidget(
                    imagePath: "assets/images/facebook.svg", press: () {}),
                SocialWidget(
                    imagePath: "assets/images/twitter.svg", press: () {}),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New here ? ",
                  style: TextStyle(fontSize: getProportionateScreenWidth(16)),
                ),
                Text(
                  "Create an account ",
                  style: TextStyle(fontSize: getProportionateScreenWidth(16)),
                ),
                Text(
                  "here",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      color: kPrimaryColor,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class SocialWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback press;

  const SocialWidget({
    Key? key,
    required this.imagePath,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
        height: getProportionateScreenHeight(50.0),
        width: getProportionateScreenWidth(50.0),
        decoration: const BoxDecoration(
          color: Color(0xFDF6F7F8),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(imagePath),
      ),
    );
  }
}
