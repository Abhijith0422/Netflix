import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class TopTVShowsResult {
  @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'popularity')
  double? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'first_air_date')
  String? firstAirDate;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'vote_average')
  double? voteAverage;
  @JsonKey(name: 'vote_count')
  int? voteCount;
  @JsonKey(name: 'original_language')
  String? orginallang;

  TopTVShowsResult(
      {this.originalName,
      this.overview,
      this.popularity,
      this.posterPath,
      this.firstAirDate,
      this.name,
      this.voteAverage,
      this.voteCount,
      this.orginallang});

  factory TopTVShowsResult.fromJson(Map<String, dynamic> json) {
    return _$TopTVShowsResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopTVShowsResultToJson(this);
}

@JsonSerializable()
class TopTVShowsResultList {
  @JsonKey(name: 'results')
  List<TopTVShowsResult>? tvshowlist;

  TopTVShowsResultList({this.tvshowlist = const []});

  factory TopTVShowsResultList.fromJson(Map<String, dynamic> json) {
    return _$TopTVShowsResultListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopTVShowsResultListToJson(this);
}
