import 'package:epitech_flutter/pages/home/home.dart';
import 'package:epitech_flutter/pages/profile/profile.dart';
import 'package:epitech_flutter/pages/product_details/product_details.dart';
import 'package:epitech_flutter/pages/register/register.dart';
import 'package:epitech_flutter/pages/sign_in/sign_in.dart';
import 'package:epitech_flutter/pages/splash/splash.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => const SplashPage(),
  SignInPage.routeName: (context) => const SignInPage(),
  HomePage.routeName: (context) => const HomePage(),
  ProfilePage.routeName: (context) => const ProfilePage(),
  ProductDetails.routeName: (context) => const ProductDetails(),
  RegisterPage.routeName: (context) => const RegisterPage(),
};
