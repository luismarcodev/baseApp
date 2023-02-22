import 'package:base_app/models/category_model.dart';

class Topic {
  Topic({
    required this.translationKey,
    required this.title,
    this.subtitle,
    required this.categories,
    this.urlImage,
  });

  String translationKey;
  final String title;
  String? subtitle = "";
  String? urlImage;
  List<Category> categories = [];

  factory Topic.fromMap(Map map) {
    return Topic(
        translationKey: map['translationKey'],
        title: map['title'],
        subtitle: map['subtitle'],
        urlImage: map['urlImage'],
        categories: map['categories']);
  }
}
