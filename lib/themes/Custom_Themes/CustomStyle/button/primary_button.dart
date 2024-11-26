import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class CustomButton extends ButtonStyle {

  static ButtonStyle primaryButtonStyle(double screenWidth) {
    return ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.white),
      backgroundColor: WidgetStatePropertyAll(primary),
      minimumSize: WidgetStateProperty.all(Size(screenWidth * 0.8, 50)),
      textStyle: const WidgetStatePropertyAll(TextStyle(fontSize: 18,))
    );
  }
  static ButtonStyle secondaryButtonStyle(double screenWidth) {
    return ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.white),
      backgroundColor: const WidgetStatePropertyAll(Colors.lightBlue),
      minimumSize: WidgetStateProperty.all(Size(screenWidth * 0.8, 50)),
    );
  }

  static ButtonStyle buttonStyleWithbackgroundColor(double screenWidth) {
    return ButtonStyle(
      foregroundColor: WidgetStateProperty.all(primary),
      minimumSize: WidgetStateProperty.all(Size(screenWidth * 0.8, 50)),
    );
  }
}
