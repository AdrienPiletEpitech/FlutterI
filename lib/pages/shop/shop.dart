import 'package:epitech_flutter/pages/shop/components/body.dart';
import 'package:flutter/material.dart';

import '../../components/bottomNavigationBar.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);
  static String routeName = '/shop';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping cart"),
      ),
      body: const Body(),
      bottomNavigationBar: buildBottomNavigationBar(2, context),
    );
  }
}
