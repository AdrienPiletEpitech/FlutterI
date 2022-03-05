import 'package:epitech_flutter/pages/sign_in/sign_in.dart';
import 'package:epitech_flutter/pages/splash/splash.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};