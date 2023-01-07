import 'package:base_app/models/category_model.dart';

class Topic {
  Topic({required this.title, required this.categories, this.subtitle});

  final String title;
  String? subtitle = "";
  List<Category> categories = [];


  factory Topic.fromMap(Map map){
    return Topic(
      title: map['title'],
      subtitle: map['subtitle'],
      categories: map['categories']
    );
  }


}
