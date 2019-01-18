import 'package:flutter_miraculous_finder/models/app_state.dart';
import 'package:flutter_miraculous_finder/modules/main_search/actions.dart';
import 'package:redux/redux.dart';

Reducer<AppState> commonReducer = combineReducers([
  new TypedReducer<AppState, SetFirstOpen>(setFirstOpenReducer),
]);

AppState setFirstOpenReducer(AppState common, SetFirstOpen action) {
  return common.copyWith(
      first: action.first
  );
}

