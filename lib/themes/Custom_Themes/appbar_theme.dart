import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class CAppBarTheme {
  CAppBarTheme._();

  static AppBarTheme lightTheme = AppBarTheme(
    foregroundColor: Colors.white,
    backgroundColor: primary,
    titleTextStyle: const TextStyle(
      fontSize: 18,
      fontWeight:FontWeight.w600 ,
    ),
    centerTitle: false,
    

  );
}
