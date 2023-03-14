import 'package:flutter/material.dart';

class BaseColors {
  static const main = Colors.red;
  static const secondary = Colors.white;
  static const lightText = Colors.grey;
  static const midText = Color.fromARGB(255, 87, 87, 87);
  static const hardText = Color.fromARGB(255, 58, 58, 58);
}

class BaseStyles {
  static const titleStyle = TextStyle(
    fontSize: 26,
    color: BaseColors.main,
  );
  static const subtitleBoldStyle = TextStyle(
    fontSize: 20,
    color: BaseColors.hardText,
    fontWeight: FontWeight.w700,
  );
  static const subtitleLightStyle = TextStyle(
    fontSize: 20,
    color: BaseColors.hardText,
  );
  static const descriptionText = TextStyle(
    fontSize: 20,
    color: BaseColors.midText,
  );
}

final baseTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    color: BaseColors.main,
  ),
  primaryColor: BaseColors.main,
  accentColor: BaseColors.secondary,
);
