// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'search.freezed.dart';
part 'search.g.dart';

@JsonSerializable()
class SearchResponse {
  @JsonKey(name: 'results')
  final List<SearchResult>? searchResults;
  SearchResponse({this.searchResults = const []});

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    @JsonKey(name: 'poster_path') required String? searchPosterPath,
    @JsonKey(name: 'id') required int? searchMovieId,
    @JsonKey(name: 'title') required String? searchOriginalTitle,
    @JsonKey(name: 'backdrop_path') required String? searchBackdropPath,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
