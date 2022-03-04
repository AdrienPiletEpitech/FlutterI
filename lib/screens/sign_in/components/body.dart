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
                  style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Sign in with your email and your password",
                  textAlign: TextAlign.center,
                ),
                const SignForm(),
                Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
                  height: getProportionateScreenHeight(40.0),
                  width: getProportionateScreenWidth(40.0),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
