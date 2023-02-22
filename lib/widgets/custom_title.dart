import 'package:base_app/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.title,
    this.isTranslationKey = true,
  });

  final String title;
  final bool isTranslationKey;

  @override
  Widget build(BuildContext context) {
    return isTranslationKey
        ? Text(
            title,
            style: BaseStyles.titleStyle,
          ).tr()
        : Text(title);
  }
}
