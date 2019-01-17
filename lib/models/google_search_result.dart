import 'package:flutter/material.dart';
import 'package:flutter_miraculous_finder/models/google_search_result_item.dart';

class GoogleSearchResult{
  final int countPage;
  final List<GoogleSearchResultItem> items;

  GoogleSearchResult(this.countPage, this.items);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is GoogleSearchResult &&
              runtimeType == other.runtimeType &&
              items == other.items;

  @override
  int get hashCode => items.hashCode;

  factory GoogleSearchResult.fromJson(dynamic json) {
    final items = (json as List)
        .cast<Map<String, Object>>()
        .map((Map<String, Object> item) {
      return GoogleSearchResultItem.fromJson(item);
    }).toList();

   items.sort((a, b) => a.numPage.compareTo(b.numPage));

    return GoogleSearchResult(items.last.numPage, items);
  }

}