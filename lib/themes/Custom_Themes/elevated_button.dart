import 'package:flutter/material.dart';

class CButtonTheme {
  CButtonTheme._();

  static ElevatedButtonThemeData lightTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStateProperty.all(const Size(200, 40)),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        
      ),
    ),
  );
}
