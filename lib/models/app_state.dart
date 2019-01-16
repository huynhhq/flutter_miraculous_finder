import 'package:flutter_miraculous_finder/models/app_tab.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final AppTab activeTab;

  AppState({this.activeTab = AppTab.main_search});

  AppState copyWith({bool isLoading, AppTab activeTab}) {
    activeTab: activeTab ?? this.activeTab;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AppState &&
              runtimeType == other.runtimeType &&
              activeTab == other.activeTab;

  @override
  int get hashCode => activeTab.hashCode;

  @override
  String toString() {
    return 'AppState{activeTab: $activeTab}';
  }

}
