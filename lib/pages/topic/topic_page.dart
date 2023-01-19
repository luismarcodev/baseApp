import 'package:base_app/pages/topic/category/widgets/category_section.dart';
import 'package:base_app/pages/topic/category/widgets/custom_subtitle.dart';
import 'package:base_app/pages/topic/widgets/subtitle_header.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../models/category_model.dart';
import '../../models/topic_model.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({
    super.key,
    required this.topic,
  });

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TopicHeader(
              subtitle: '${topic.translationKey}.title',
              imageUrlLink: topic.urlImage),
          CustomSubTitle(
            subtitle: '${topic.translationKey}.subtitle',
            isTranslationKey: true,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: getCategoryWidgets(topic.categories),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getCategoryWidgets(List<Category> categories) {
    List<Widget> categoryList = [];

    for (Category category in categories) {
      categoryList.add(CategorySection(category: category));
      categoryList.add(const Divider());
    }

    return categoryList;
  }
}
