import 'dart:convert';

class EntityModel {
  String name;
  String icon;
  EntityModel({
    required this.name,
    required this.icon,
  });

  EntityModel copyWith({
    String? name,
    String? icon,
  }) {
    return EntityModel(
      name: name ?? this.name,
      icon: icon ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'icon': icon,
    };
  }

  factory EntityModel.fromMap(Map<String, dynamic> map) {
    return EntityModel(
      name: map['name'],
      icon: map['icon'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EntityModel.fromJson(String source) =>
      EntityModel.fromMap(json.decode(source));

  @override
  String toString() => 'IconModels(name: $name, icon: $icon)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EntityModel && other.name == name && other.icon == icon;
  }

  @override
  int get hashCode => name.hashCode ^ icon.hashCode;
}
