// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top10models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Top10models _$Top10modelsFromJson(Map<String, dynamic> json) => Top10models(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Top10Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$Top10modelsToJson(Top10models instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
