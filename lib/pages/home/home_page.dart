import 'package:base_app/pages/topic/topic_page.dart';
import 'package:base_app/settings/project_settings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../models/topic_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: ProjectSettings.topics.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          bottom: TabBar(tabs: _generateTabBar()),
          title: const Text('common.title').tr(),
        ),
        body: TabBarView(
          children: _generateTopicViews(),
        ),
      ),
    );
  }

  List<TopicPage> _generateTopicViews() {
    List<TopicPage> topicsList = [];

    for (Topic topic in ProjectSettings.topics) {
      topicsList.add(TopicPage(topic: topic));
    }
    return topicsList;
  }

  List<Widget> _generateTabBar() {
    List<Widget> topicsList = [];

    for (Topic topic in ProjectSettings.topics) {
      topicsList.add(Tab(
          child: Text(
        '${topic.translationKey}.title',
        style: const TextStyle(
          fontSize: 18,
        ),
      ).tr()));
    }
    return topicsList;
  }
}
