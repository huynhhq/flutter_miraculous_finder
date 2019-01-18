import 'package:flutter_miraculous_finder/models/search_status.dart';
import 'package:meta/meta.dart';

@immutable
class MainSearchState{

  //Properties
  final String searchValue;
  final SearchStatus status;

  MainSearchState({
    this.searchValue = '',
    this.status = SearchStatus.search_intro
});

  MainSearchState copyWith({
    String searchValue,
    SearchStatus status,

  }) {
    return new MainSearchState(
        searchValue: searchValue?? this.searchValue,
        status: status ?? this.status
    );
  }

  Map<String, dynamic> toJson() => {
    'search_value': this.searchValue,
    'status': this.status
  };

  factory MainSearchState.fromJSON(Map<String, dynamic> json) => new MainSearchState(
      searchValue: json['search_value'],
      status: json['status']
  );

}