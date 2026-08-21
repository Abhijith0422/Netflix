// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingImpl _$$TrendingImplFromJson(Map<String, dynamic> json) =>
    _$TrendingImpl(
      posterPath: json['poster_path'] as String?,
      movieid: (json['id'] as num?)?.toInt(),
      originalTitle: json['title'] as String?,
      originalname: json['name'] as String?,
      overview: json['overview'] as String?,
      originalName: (json['orginal_title'] as num?)?.toDouble(),
      originallanguage: json['original_language'] as String?,
    );

Map<String, dynamic> _$$TrendingImplToJson(_$TrendingImpl instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'id': instance.movieid,
      'title': instance.originalTitle,
      'name': instance.originalname,
      'overview': instance.overview,
      'orginal_title': instance.originalName,
      'original_language': instance.originallanguage,
    };
