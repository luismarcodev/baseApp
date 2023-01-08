import 'package:base_app/models/item_model.dart';

class Category {
  Category({
    required this.translationKey,
    required this.title,
    required this.items,
    this.subtitle,
  });

  final String translationKey;
  final String title;
  String? subtitle = "";
  List<Item> items = [];

  factory Category.fromMap(Map map) {
    return Category(
        translationKey: map['translationKey'],
        title: map['title'],
        subtitle: map['subtitle'],
        items: map['items']);
  }
}
