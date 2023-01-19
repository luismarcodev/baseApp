import 'package:base_app/pages/topic/items/widgets/items_horizontal_list_view.dart';
import 'package:base_app/pages/topic/category/widgets/custom_subtitle.dart';
import 'package:base_app/pages/topic/category/widgets/custom_title.dart';
import 'package:base_app/models/category_model.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTitle(
            title: category.title,
            isTranslationKey: true,
          ),
        ),
        CustomSubTitle(
          subtitle: category.subtitle ?? '',
          isTranslationKey: true,
        ),
        ItemsHorizontalListView(items: category.items)
      ],
    );
  }
}
