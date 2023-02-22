import 'package:flutter/material.dart';

class BaseColors {
  static const main = Colors.brown;
  static const secondary = Colors.brown;
  static const lightText = Colors.grey;
}

class BaseStyles {
  static const subtitleStyle = TextStyle(
    fontSize: 20,
    color: BaseColors.lightText,
  );
  static const titleStyle = TextStyle(
    fontSize: 26,
    color: BaseColors.main,
  );
}

final baseTheme = ThemeData(
  fontFamily: 'monserratBold',
  appBarTheme: const AppBarTheme(
    color: BaseColors.main,
  ),
  primaryColor: BaseColors.main,
  accentColor: BaseColors.secondary,
);
