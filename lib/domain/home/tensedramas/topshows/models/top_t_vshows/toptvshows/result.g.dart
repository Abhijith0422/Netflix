// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopTVShowsResult _$TopTVShowsResultFromJson(Map<String, dynamic> json) =>
    TopTVShowsResult(
      originalName: json['original_name'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      name: json['name'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
      orginallang: json['original_language'] as String?,
    );

Map<String, dynamic> _$TopTVShowsResultToJson(TopTVShowsResult instance) =>
    <String, dynamic>{
      'original_name': instance.originalName,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'first_air_date': instance.firstAirDate,
      'name': instance.name,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'original_language': instance.orginallang,
    };

TopTVShowsResultList _$TopTVShowsResultListFromJson(
        Map<String, dynamic> json) =>
    TopTVShowsResultList(
      tvshowlist: (json['results'] as List<dynamic>?)
              ?.map((e) => TopTVShowsResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$TopTVShowsResultListToJson(
        TopTVShowsResultList instance) =>
    <String, dynamic>{
      'results': instance.tvshowlist,
    };
