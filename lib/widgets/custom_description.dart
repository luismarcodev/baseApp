import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomDescription extends StatelessWidget {
  const CustomDescription({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(description).tr();
  }
}
