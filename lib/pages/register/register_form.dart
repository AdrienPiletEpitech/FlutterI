import 'package:epitech_flutter/constant.dart';
import 'package:epitech_flutter/pages/sign_in/sign_in.dart';
import 'package:flutter/material.dart';
import '../../components/default_button.dart';
import '../../size_config.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
            buildRepeatPasswordFormField(),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: appColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  },
                ),
                const Text("Agree Terms"),
                const Spacer(),
                const Text(
                  "Terms",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20.0)),
            DefaultButton(
                text: "Continue",
                press: () {
                  Navigator.pushNamed(context, SignInPage.routeName);
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

  TextFormField buildRepeatPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        hintText: "Re-enter your password",
        labelText: "Confirm Password",
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
