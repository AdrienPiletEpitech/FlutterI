import 'package:epitech_flutter/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
