import 'package:flutter_miraculous_finder/models/app_state.dart';
import 'package:redux/redux.dart';

class SetSearchResult{
  final List<Object> searchResult;
  SetSearchResult(this.searchResult);
}

final Function getSearchResult = (Store<AppState> store) async {

};
