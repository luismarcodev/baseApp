import 'package:base_app/pages/topic/widgets/subtitle_header.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
          SubtitleHeader(
              subtitle: '${topic.translationKey}.subtitle',
              imageUrlLink: topic.urlImage),
        ],
      ),
    );
  }
}
