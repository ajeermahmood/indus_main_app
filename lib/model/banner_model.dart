import 'dart:convert';

class BannerModel {
  final String id;
  final String image;
  final String link;
  final String status;
  final String title;
  final String subtitle;
  final String sortOrder;

  BannerModel({
    required this.id,
    required this.image,
    required this.link,
    required this.status,
    required this.title,
    required this.subtitle,
    required this.sortOrder,
  });

  factory BannerModel.fromJson(String str) =>
      BannerModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BannerModel.fromMap(Map<String, dynamic> json) => BannerModel(
        id: json["id"],
        image: json["image"],
        link: json["link"],
        status: json["status"],
        title: json["title"],
        subtitle: json["subtitle"],
        sortOrder: json["sort_order"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "image": image,
        "link": link,
        "status": status,
        "title": title,
        "subtitle": subtitle,
        "sort_order": sortOrder,
      };
}
