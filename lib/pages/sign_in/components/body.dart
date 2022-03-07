import 'package:epitech_flutter/constant.dart';
import 'package:epitech_flutter/pages/register/register.dart';
import 'package:epitech_flutter/size_config.dart';
import 'package:flutter/material.dart';
import '../../../widget/socialMediaIcons_widget.dart';
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
            registerTextRow(context),
          ],
        ),
      ),
    ));
  }

  Row registerTextRow(BuildContext context) {
    return Row(
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
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RegisterPage.routeName);
          },
          child: Text(
            "here",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: appColor,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
