class Item {
  Item({
    required this.title,
    this.subtitle,
    this.description,
    this.urlImage,
  });

  final String title;
  String? subtitle;
  String? description;
  String? urlImage;


  factory Item.fromMap(Map map){
    return Item(
      title: map['title'],
      subtitle: map['subtitle'],
      description: map['description'],
      urlImage: map['urlImage']
    );
  }
}
