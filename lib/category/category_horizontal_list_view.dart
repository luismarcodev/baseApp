import 'package:base_app/category/widgets/custom_subtitle.dart';
import 'package:base_app/category/widgets/custom_title.dart';
import 'package:base_app/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryHorizontalListView extends StatelessWidget {
  const CategoryHorizontalListView({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitle(
          title: category.title,
          isTranslationKey: true,
        ),
        CustomSubTitle(
          subtitle: category.subtitle ?? '',
          isTranslationKey: true,
        )
      ],
    );
  }
}
