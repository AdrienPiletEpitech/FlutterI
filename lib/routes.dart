import 'package:epitech_flutter/pages/sign_in/sign_in.dart';
import 'package:epitech_flutter/pages/splash/splash.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  SignInPage.routeName: (context) => SignInPage(),
};