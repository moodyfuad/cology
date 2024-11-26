import 'package:cology/Pages_Materials/LoginPage/login_page_body.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const routeName = "/LoginPage";
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LoginPageBody(screenWidth: screenWidth);
  }
}
