import 'package:epitech_flutter/constant.dart';
import 'package:epitech_flutter/pages/profile/profile.dart';
import 'package:flutter/material.dart';
import '../../components/default_button.dart';
import '../../size_config.dart';
import '../home/home.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(20.0)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(20.0)),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  },
                ),
                const Text("Remember me"),
                const Spacer(),
                const Text(
                  "Forgot password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            DefaultButton(
                text: "Continue",
                press: () {
                  Navigator.pushNamed(context, ProfilePage.routeName);
                }),
          ],
        ));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        hintText: "Enter your password",
        labelText: "Password",
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: "Enter your email",
        labelText: "Email",
      ),
    );
  }
}
