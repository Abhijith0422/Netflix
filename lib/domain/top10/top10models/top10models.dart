import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'top10models.g.dart';

@JsonSerializable()
class Top10models {
  int? page;
  List<Top10Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  Top10models({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory Top10models.fromJson(Map<String, dynamic> json) {
    return _$Top10modelsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$Top10modelsToJson(this);
}
