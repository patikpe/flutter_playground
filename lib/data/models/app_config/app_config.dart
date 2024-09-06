import 'dart:convert';

import 'package:flutter_playground/data/models/app_config/app_config_item.dart';

class AppConfig {
  int page;
  int perPage;
  int totalItems;
  int totalPages;
  List<Item> items;

  AppConfig({
    required this.page,
    required this.perPage,
    required this.totalItems,
    required this.totalPages,
    required this.items,
  });

  AppConfig copyWith({
    int? page,
    int? perPage,
    int? totalItems,
    int? totalPages,
    List<Item>? items,
  }) =>
      AppConfig(
        page: page ?? this.page,
        perPage: perPage ?? this.perPage,
        totalItems: totalItems ?? this.totalItems,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items,
      );

  factory AppConfig.fromRawJson(String str) =>
      AppConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AppConfig.fromJson(Map<String, dynamic> json) => AppConfig(
        page: json["page"],
        perPage: json["perPage"],
        totalItems: json["totalItems"],
        totalPages: json["totalPages"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "perPage": perPage,
        "totalItems": totalItems,
        "totalPages": totalPages,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}
