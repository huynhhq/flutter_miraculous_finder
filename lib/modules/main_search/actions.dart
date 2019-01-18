import 'package:flutter_miraculous_finder/models/app_state.dart';
import 'package:redux/redux.dart';
import 'repository.dart';
import 'package:flutter_miraculous_finder/commons/configs.dart';
import 'package:html/parser.dart' show parse;


class SetSearchResult{
  final List<Object> searchResult;
  SetSearchResult(this.searchResult);
}

class SetFirstOpen {
  final bool first;
  SetFirstOpen(this.first);
}

final Function getSearchResult = (Store<AppState> store, int start, String searchValue) async {
  String url = "$GOOGLE_SEARCH_URL$searchValue";
  var result = await searchBaseData(url);
  if(result != ''){
    _parseBaseData(result);
  }
  return null;
};

void _parseBaseData(String baseData){
  var document = parse(baseData);
  var mainData = document.getElementsByClassName(kClassNameGoogle)[0];
  var aTag = mainData.getElementsByTagName("a")[0];
  var baseLink = aTag.attributes["href"];
  print(baseLink);
}
