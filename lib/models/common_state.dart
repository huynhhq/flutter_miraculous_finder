import 'package:flutter_miraculous_finder/models/app_tab.dart';
import 'package:meta/meta.dart';

@immutable
class CommonState {

  //Properties
  final AppTab activeTab;
  final String language;
  final String about;
  final bool first;

  CommonState(
      {this.activeTab = AppTab.main_search,
      this.language = "en",
      this.about = '',
      this.first = true});

  CommonState copyWith({
    AppTab activeTab,
    String language,
    String about,
    bool first,
  }) {
    return new CommonState(
      activeTab: activeTab?? this.activeTab,
        language: language ?? this.language,
        about: about ?? this.about,
        first: first ?? this.first
    );
  }

  Map<String, dynamic> toJSON() => <String, dynamic>{
        'active_tab': this.activeTab,
        'language': this.language,
        'about': this.about,
        'first': this.first
      };

  factory CommonState.fromJSON(Map<String, dynamic> json) => new CommonState(
      activeTab: json['active_tab'],
      language: json['language'],
      about: json['about'],
      first: json['first']);
}
