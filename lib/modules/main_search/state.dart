import 'package:flutter_miraculous_finder/models/search_status.dart';
import 'package:meta/meta.dart';

@immutable
class MainSearch {
  final List<Object> searchResult;
  final SearchStatus status;

  MainSearch(this.searchResult, this.status);

  MainSearch copyWith({List<Object> searchResult, SearchStatus status}) {
    searchResult: searchResult ?? this.searchResult;
    status: status ?? this.status;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MainSearch &&
          runtimeType == other.runtimeType &&
          searchResult == other.searchResult &&
          status == other.status;

  @override
  int get hashCode => searchResult.hashCode ^ status.hashCode;

  @override
  String toString() {
    return 'MainSearch{searchResult: $searchResult, status: $status}';
  }
}
