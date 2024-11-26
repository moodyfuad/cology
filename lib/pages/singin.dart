import 'package:cology/Pages_Materials/SigninPage/signin_page_body.dart';
import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class Singin extends StatefulWidget {
  static const String routeName = "/SignIn";

  const Singin({super.key,});

  @override
  State<Singin> createState() => _SinginState();
}

List<DropdownMenuItem<dynamic>> stude = const [
  DropdownMenuItem(
    value: 'تقنية معلومات',
    child: Text('تقنية معلومات'),
  ),
  DropdownMenuItem(
    value: 'علوم حاسوب',
    child: Text('علوم حاسوب'),
  ),
];

List<DropdownMenuItem<dynamic>> typeAcsp = const [
  DropdownMenuItem(
    value: 'قبول عام',
    child: Text('قبول عام'),
  ),
  DropdownMenuItem(
    value: 'موازي',
    child: Text('موازي'),
  ),
];

List<DropdownMenuItem<dynamic>> level = const [
  DropdownMenuItem(
    value: 'مستوى اول',
    child: Text('مستوى اول'),
  ),
  DropdownMenuItem(
    value: 'مستوى ثاني',
    child: Text('مستوى ثاني'),
  ),
    DropdownMenuItem(
    value: 'مستوى ثالث',
    child: Text('مستوى ثالث'),
  ),
    DropdownMenuItem(
    value: 'مستوى رابع',
    child: Text('مستوى رابع'),
  ),
];

List<DropdownMenuItem<dynamic>> smster = const [
  DropdownMenuItem(
    value: 'الاول',
    child: Text('الترم الاول'),
  ),
  DropdownMenuItem(
    value: 'الثاني',
    child: Text('الترم الثاني'),
  ),
];

class _SinginState extends State<Singin> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      body: SigninPageBody(screenWidth: screenWidth, widget: widget),
      bottomSheet: Container(
        color: primary,
        width: screenWidth,
        height: 20,
      ),
    );
  }
}
