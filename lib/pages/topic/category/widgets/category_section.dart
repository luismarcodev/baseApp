import 'package:base_app/pages/topic/widgets/items_horizontal_list_view.dart';
import 'package:base_app/widgets/custom_subtitle.dart';
import 'package:base_app/widgets/custom_title.dart';
import 'package:base_app/models/category_model.dart';
import 'package:easy_localization/easy_localization.dart';
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
            title: '${category.translationKey}.title',
            isTranslationKey: false,
          ),
        ),
        CustomSubTitle(
          subtitle: '${category.translationKey}.subtitle',
          isTranslationKey: false,
        ),
        const SizedBox(
          height: 8,
        ),
        ItemsHorizontalListView(items: category.items)
      ],
    );
  }
}
