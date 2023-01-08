class Item {
  Item({
    required this.translationKey,
    required this.title,
    this.subtitle,
    this.description,
    this.urlImage,
  });

  final String title;
  final String translationKey;
  String? subtitle;
  String? description;
  String? urlImage;

  factory Item.fromMap(Map map) {
    return Item(
        translationKey: map['translationKey'],
        title: map['title'],
        subtitle: map['subtitle'],
        description: map['description'],
        urlImage: map['urlImage']);
  }
}
