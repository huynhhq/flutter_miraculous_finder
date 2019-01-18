import 'package:flutter_miraculous_finder/models/app_tab.dart';
import 'package:flutter_miraculous_finder/models/common_state.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final CommonState commonState;


  AppState(
      {this.commonState});

  AppState copyWith({
    AppTab activeTab,
    String language,
    String about,
    bool first,
  }) {
    return new AppState(
        commonState: commonState ?? this.commonState);
  }

}
