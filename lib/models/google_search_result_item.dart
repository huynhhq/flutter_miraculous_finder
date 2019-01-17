import 'package:flutter/material.dart';

class GoogleSearchResultItem {
  final String title;
  final String subTitle;
  final String distance;
  final String openingTime;
  final String url;
  final int numPage;

  GoogleSearchResultItem(this.title, this.subTitle, this.distance,
      this.openingTime,this.url, this.numPage);

  factory GoogleSearchResultItem.fromJson(Map<String, Object> json) {
    return GoogleSearchResultItem(
      json['title'] as String,
      json["sub_title"] as String,
      json["distance"] as String,
      json["opening_time"] as String,
      json["url"] as String,
      json["num_page"] as int
    );
  }

}