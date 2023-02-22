class Item {
  Item({
    required this.translationKey,
    required this.title,
    this.subtitle,
    this.description,
    this.urlImage = 'https://objetivoweb.es/base_app/no_image.jpg',
  });

  final String title;
  final String translationKey;
  String? subtitle;
  String? description;
  String urlImage;

  factory Item.fromMap(Map map) {
    return Item(
        translationKey: map['translationKey'],
        title: map['title'],
        subtitle: map['subtitle'],
        description: map['description'],
        urlImage: map['urlImage']);
  }
}
