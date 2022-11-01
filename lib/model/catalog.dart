import 'dart:convert';

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

  Item copyWith({
    int? id,
    String? title,
    String? text,
    String? img,
  }) {
    return Item(
      id: id ?? this.id,
      title: title ?? this.title,
      text: text ?? this.text,
      img: img ?? this.img,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'text': text,
      'img': img,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      text: map['text'] ?? '',
      img: map['img'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, title: $title, text: $text, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.title == title &&
        other.text == text &&
        other.img == img;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ text.hashCode ^ img.hashCode;
  }
}
