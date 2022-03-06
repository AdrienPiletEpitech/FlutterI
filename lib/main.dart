import 'package:epitech_flutter/routes.dart';
import 'package:epitech_flutter/pages/splash/splash.dart';
import 'package:epitech_flutter/themes/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Epitech Project',
      theme: theme(),
      initialRoute: SplashPage.routeName,
      routes: routes,
    );
  }
}
