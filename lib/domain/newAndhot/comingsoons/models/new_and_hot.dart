import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_and_hot.g.dart';

@JsonSerializable()
class NewAndHotResp {
  @JsonKey(name: 'results')
  final List<NewAndHotResult>? newandhot;

  NewAndHotResp({
    this.newandhot = const [],
  });

  factory NewAndHotResp.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotRespToJson(this);
}

@JsonSerializable()
class NewAndHotResult {
  @JsonKey(name: 'key')
  final String? id;
  @JsonKey(name: 'title')
  final String? movietitle;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'poster_path')
  final String? posterpath;
  @JsonKey(name: 'release_date')
  final String? releasedate;

  const NewAndHotResult({
    required this.id,
    required this.movietitle,
    required this.overview,
    required this.posterpath,
    required this.releasedate,
  });

  factory NewAndHotResult.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotResultToJson(this);
}
