import 'package:flutter/material.dart';
import '../constant.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: () {},
        child: Text("Continue", style: TextStyle(
          fontSize: getProportionateScreenWidth(18),
          color: Colors.white,
        )),
      ),
    );
  }
}

