class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        title: "India",
        text: "New Delhi",
        img:
            "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png")
  ];
}

class Item {
  final int id;
  final String title;
  final String text;
  final String img;

  Item({
    required this.id,
    required this.title,
    required this.text,
    required this.img,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      title: map["title"],
      text: map["text"],
      img: map["img"],
    );
  }

  toMap() => {
        "id": id,
        "title": title,
        "text": text,
        "img": img,
      };
}
