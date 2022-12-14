// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Earbuds",
        desc: "Sunne ke kaam aata hai",
        color: "#9d06fc",
        price: 299,
        imageURL:
            "data:image/jpeg;base64,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")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String color;
  final num price;
  final String imageURL;
  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.color,
    required this.price,
    required this.imageURL,
  });

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    String? color,
    num? price,
    String? imageURL,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      color: color ?? this.color,
      price: price ?? this.price,
      imageURL: imageURL ?? this.imageURL,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'color': color,
      'price': price,
      'imageURL': imageURL,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      color: map['color'] as String,
      price: map['price'] as num,
      imageURL: map['imageURL'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, color: $color, price: $price, imageURL: $imageURL)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.color == color &&
        other.price == price &&
        other.imageURL == imageURL;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        color.hashCode ^
        price.hashCode ^
        imageURL.hashCode;
  }
}


/*
Khud ki mehnat se likha gya code
// Regular constructor
  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.price,
      required this.imageURL});

  // Constructor that makes object from a Map (hashmap in dart)
  static fromMap(Map<String, dynamic> map) => Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        imageURL: map["imageURL"],
      );

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "imageURL": imageURL
      };
*/