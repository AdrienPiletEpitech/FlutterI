import 'package:epitech_flutter/constant.dart';
import 'package:flutter/material.dart';

import '../../components/bottomNavigationBar.dart';
import 'components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Body(),
      bottomNavigationBar: buildBottomNavigationBar(0, context),
    );
  }
}
