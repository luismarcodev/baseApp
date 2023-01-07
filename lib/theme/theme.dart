import 'package:flutter/material.dart';

class BaseColors {

  static const main = Colors.brown;
  static const secondary = Colors.orange;
}


final baseTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    color: BaseColors.main,
  ),
  primaryColor: BaseColors.main,
  accentColor: BaseColors.secondary,

  
  

);