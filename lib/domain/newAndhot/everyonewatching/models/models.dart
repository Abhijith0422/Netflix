import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'models.g.dart';

@JsonSerializable()
class EveryoneWatchingModels {
  @JsonKey(name: 'results')
  List<EveryoneWatchingResult>? everyonewatchingresults;

  EveryoneWatchingModels({this.everyonewatchingresults = const []});

  factory EveryoneWatchingModels.fromJson(Map<String, dynamic> json) {
    return _$EveryoneWatchingModelsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryoneWatchingModelsToJson(this);
}
