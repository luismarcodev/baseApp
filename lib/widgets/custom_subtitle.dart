import 'package:base_app/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({
    super.key,
    required this.subtitle,
    this.isTranslationKey = true,
  });

  final String subtitle;
  final bool isTranslationKey;

  @override
  Widget build(BuildContext context) {
    return isTranslationKey
        ? Text(
            subtitle,
            style: BaseStyles.subtitleLightStyle,
          ).tr()
        : Text(
            subtitle,
            style: BaseStyles.subtitleLightStyle,
          );
  }
}
