
import 'dart:convert';

import 'package:base_app/models/category_model.dart';
import 'package:base_app/models/item_model.dart';
import 'package:base_app/models/topic_model.dart';
import 'package:flutter/services.dart';

class ProjectSettings{

  static List<Topic> topics = [];

  Future<void> getMainData() async {
    final String response = await rootBundle.loadString('assets/i18n/en.json');
    final Map data = await json.decode(response);
    _setTopics(data['topics']);
}


  void _setTopics(Map data){
    data.forEach((k, v) {
      List<Category> categoryList = _setCategories(v['categories']);
      print(categoryList);
      v['categories'] = categoryList;
      topics.add(Topic.fromMap(v));
     });
  }

  List<Category> _setCategories(Map data){
    List<Category> categoryList = [];
     data.forEach((k, v) {
       List<Item> itemsList = _setItems(v['items']);
       v['items'] = itemsList;
       categoryList.add(Category.fromMap(v));
     });
    return categoryList;
  }

  List<Item> _setItems(Map data){
    List<Item> itemsList = [];
     data.forEach((k, v) {
       itemsList.add(Item.fromMap(v));
     });
    return itemsList;
  }


}