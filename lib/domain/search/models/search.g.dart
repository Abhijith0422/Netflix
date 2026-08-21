// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    SearchResponse(
      searchResults: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) =>
    <String, dynamic>{
      'results': instance.searchResults,
    };

_$SearchResultImpl _$$SearchResultImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultImpl(
      searchPosterPath: json['poster_path'] as String?,
      searchMovieId: (json['id'] as num?)?.toInt(),
      searchOriginalTitle: json['title'] as String?,
      searchBackdropPath: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$$SearchResultImplToJson(_$SearchResultImpl instance) =>
    <String, dynamic>{
      'poster_path': instance.searchPosterPath,
      'id': instance.searchMovieId,
      'title': instance.searchOriginalTitle,
      'backdrop_path': instance.searchBackdropPath,
    };
