import 'dart:convert';

class Item {
  String appColor;
  String collectionId;
  String collectionName;
  DateTime created;
  String id;
  String name;
  DateTime updated;

  Item({
    required this.appColor,
    required this.collectionId,
    required this.collectionName,
    required this.created,
    required this.id,
    required this.name,
    required this.updated,
  });

  Item copyWith({
    String? appColor,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    String? id,
    String? name,
    DateTime? updated,
  }) =>
      Item(
        appColor: appColor ?? this.appColor,
        collectionId: collectionId ?? this.collectionId,
        collectionName: collectionName ?? this.collectionName,
        created: created ?? this.created,
        id: id ?? this.id,
        name: name ?? this.name,
        updated: updated ?? this.updated,
      );

  factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        appColor: (json["app_color"] as String).replaceFirst('#', '0xFF'),
        collectionId: json["collectionId"],
        collectionName: json["collectionName"],
        created: DateTime.parse(json["created"]),
        id: json["id"],
        name: json["name"],
        updated: DateTime.parse(json["updated"]),
      );

  Map<String, dynamic> toJson() => {
        "app_color": appColor,
        "collectionId": collectionId,
        "collectionName": collectionName,
        "created": created.toIso8601String(),
        "id": id,
        "name": name,
        "updated": updated.toIso8601String(),
      };
}
