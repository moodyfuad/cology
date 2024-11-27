import 'package:cology/themes/Custom_Themes/appbar_theme.dart';
import 'package:cology/themes/Custom_Themes/bottom_sheet_theme.dart';
import 'package:cology/themes/Custom_Themes/ctextformfieldtheme.dart';
import 'package:cology/themes/Custom_Themes/elevated_button.dart';
import 'package:cology/themes/Custom_Themes/floating_button_theme.dart';
import 'package:cology/themes/Custom_Themes/text_theme.dart';
import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class CTheme {
  CTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primary,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CAppBarTheme.lightTheme,
    textTheme: CTextTheme.lightTheme,
    bottomSheetTheme:CBottomSheet.lightTheme ,
    elevatedButtonTheme:CButtonTheme.lightTheme,
    inputDecorationTheme: Ctextformfieldtheme.lightTheme,
    floatingActionButtonTheme: CFloatingButtonTheme.lightTheme,
    
  );
}
