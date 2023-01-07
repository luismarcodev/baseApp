import 'package:base_app/models/item_model.dart';

class Category {
  Category({
    required this.title,
    required this.items,
    this.subtitle,
  });

  final String title;
  String? subtitle = "";
  List<Item> items = [];



  factory Category.fromMap(Map map){
    return Category(
      title: map['title'],
      subtitle: map['subtitle'],
      items: map['items']
    );
  }
}
