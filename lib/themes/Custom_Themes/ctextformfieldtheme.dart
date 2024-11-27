import 'package:flutter/material.dart';

class Ctextformfieldtheme {
  Ctextformfieldtheme._();

  static InputDecorationTheme lightTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade100,
    labelStyle: const TextStyle().copyWith(fontSize: 17, color: Colors.black45),
    hintStyle: const TextStyle().copyWith(fontSize: 17, color: Colors.black45),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(1.0),
      borderSide: const BorderSide(
        width: 0,
        color: Colors.white,
      ),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.grey,
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.black12,
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.red,
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.orange,
      ),
    ),
  );
}
