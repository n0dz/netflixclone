import 'dart:convert';

import 'Hit.dart';

PictureResponse responseFromJson(String str) => PictureResponse.fromJson(json.decode(str));

String responseToJson(PictureResponse data) => json.encode(data.toJson());

class PictureResponse {
  PictureResponse({
    this.total,
    this.totalHits,
    required this.hits,
  });

  int? total;
  int? totalHits;
  List<Hit> hits;

  factory PictureResponse.fromJson(Map<String, dynamic> json) => PictureResponse(
    total: json["total"],
    totalHits: json["totalHits"],
    hits: List<Hit>.from(json["hits"].map((x) => Hit.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "totalHits": totalHits,
    "hits": List<dynamic>.from(hits.map((x) => x.toJson())),
  };
}


