import 'dart:convert';

class Character {
  String name;
  String image;
  Character({
    this.name,
    this.image,
  });

  Character copyWith({
    String name,
    String image,
  }) {
    return Character(
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
    };
  }

  factory Character.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Character(
      name: map['name'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Character.fromJson(String source) =>
      Character.fromMap(json.decode(source));

  @override
  String toString() => 'Character(name: $name, image: $image)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Character && o.name == name && o.image == image;
  }

  @override
  int get hashCode => name.hashCode ^ image.hashCode;
}
