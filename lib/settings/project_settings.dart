import 'dart:convert';

import 'package:base_app/models/category_model.dart';
import 'package:base_app/models/item_model.dart';
import 'package:base_app/models/topic_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class ProjectSettings {
  static String title = 'Title';
  static List<Topic> topics = [];

  Future<void> getMainData() async {
    final String response = await rootBundle.loadString('assets/i18n/en.json');
    final Map data = await json.decode(response);
    setTopics(data['topics']);
  }

  void setTopics(Map data) {
    data.forEach((k, v) {
      v['translationKey'] = 'topics.$k';

      List<Category> categoryList =
          _setCategories(v['translationKey'], v['categories']);
      v['categories'] = categoryList;

      topics.add(Topic.fromMap(v));
    });
  }

  List<Category> _setCategories(String parentTranslationKey, Map data) {
    List<Category> categoryList = [];
    data.forEach((k, v) {
      v['translationKey'] = '$parentTranslationKey.categories.$k';
      List<Item> itemsList = _setItems(v['translationKey'], v['items']);
      v['items'] = itemsList;

      categoryList.add(Category.fromMap(v));
    });
    return categoryList;
  }

  List<Item> _setItems(String parentTranslationKey, Map data) {
    List<Item> itemsList = [];
    data.forEach((k, v) {
      v['translationKey'] = '$parentTranslationKey.items.$k';
      itemsList.add(Item.fromMap(v));
    });
    return itemsList;
  }
}
