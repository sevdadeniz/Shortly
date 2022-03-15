// To parse this JSON data, do
//
//     final shortlyModel = shortlyModelFromJson(jsonString);

import 'dart:convert';

ShortlyModel shortlyModelFromJson(String str) => ShortlyModel.fromJson(json.decode(str));

String shortlyModelToJson(ShortlyModel data) => json.encode(data.toJson());

class ShortlyModel {
  ShortlyModel({
    this.ok,
    this.result,
  });

  bool ok;
  Result result;

  factory ShortlyModel.fromJson(Map<String, dynamic> json) => ShortlyModel(
    ok: json["ok"] == null ? null : json["ok"],
    result: json["result"] == null ? null : Result.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "ok": ok == null ? null : ok,
    "result": result == null ? null : result.toJson(),
  };
}

class Result {
  Result({
    this.code,
    this.shortLink,
    this.fullShortLink,
    this.shortLink2,
    this.fullShortLink2,
    this.shareLink,
    this.fullShareLink,
    this.originalLink,
  });

  String code;
  String shortLink;
  String fullShortLink;
  String shortLink2;
  String fullShortLink2;
  String shareLink;
  String fullShareLink;
  String originalLink;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    code: json["code"] == null ? null : json["code"],
    shortLink: json["short_link"] == null ? null : json["short_link"],
    fullShortLink: json["full_short_link"] == null ? null : json["full_short_link"],
    shortLink2: json["short_link2"] == null ? null : json["short_link2"],
    fullShortLink2: json["full_short_link2"] == null ? null : json["full_short_link2"],
    shareLink: json["share_link"] == null ? null : json["share_link"],
    fullShareLink: json["full_share_link"] == null ? null : json["full_share_link"],
    originalLink: json["original_link"] == null ? null : json["original_link"],
  );

  Map<String, dynamic> toJson() => {
    "code": code == null ? null : code,
    "short_link": shortLink == null ? null : shortLink,
    "full_short_link": fullShortLink == null ? null : fullShortLink,
    "short_link2": shortLink2 == null ? null : shortLink2,
    "full_short_link2": fullShortLink2 == null ? null : fullShortLink2,
    "share_link": shareLink == null ? null : shareLink,
    "full_share_link": fullShareLink == null ? null : fullShareLink,
    "original_link": originalLink == null ? null : originalLink,
  };
}
