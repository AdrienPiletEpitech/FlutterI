import 'package:epitech_flutter/constant.dart';
import 'package:epitech_flutter/pages/register/register.dart';
import 'package:epitech_flutter/pages/register/register_form.dart';
import 'package:epitech_flutter/size_config.dart';
import 'package:flutter/material.dart';
import '../../../widget/socialMediaIcons_widget.dart';

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
              "Create a new Account",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Complete your details, and let's begin now !",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            const RegisterForm(),
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
          ],
        ),
      ),
    ));
  }
}
