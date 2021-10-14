import 'package:flutter/material.dart';
import 'package:lumilife/screens/authen/forgot_password_screen.dart';
import 'package:lumilife/screens/authen/login_screen.dart';
import 'package:lumilife/screens/authen/register_screen.dart';
import 'package:lumilife/screens/homes/homes_screen.dart';

class Routes {
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgotPassword';
  static const String homes = '/homes';
}

Map<String, WidgetBuilder> routes = {
  Routes.login: (context) => const LoginScreen(),
  Routes.forgotPassword: (context) => const ForgotPasswordScreen(),
  Routes.register: (context) => const RegisterScreen(),
  Routes.homes: (context) => const Homes(),
};
