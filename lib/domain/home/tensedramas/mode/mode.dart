import 'package:json_annotation/json_annotation.dart';

part 'mode.g.dart';

@JsonSerializable()
class Mode {
  @JsonKey(name: 'results')
  final List<Result>? drama;

  Mode({this.drama = const []});

  factory Mode.fromJson(Map<String, dynamic> json) => _$ModeFromJson(json);

  Map<String, dynamic> toJson() => _$ModeToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'origin_country')
  List<String>? originCountry;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'overview')
  String? overview;
  double? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  Result({
    this.backdropPath,
    this.originCountry,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
