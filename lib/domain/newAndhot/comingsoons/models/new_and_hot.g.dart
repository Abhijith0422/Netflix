// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_and_hot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewAndHotResp _$NewAndHotRespFromJson(Map<String, dynamic> json) =>
    NewAndHotResp(
      newandhot: (json['results'] as List<dynamic>?)
              ?.map((e) => NewAndHotResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$NewAndHotRespToJson(NewAndHotResp instance) =>
    <String, dynamic>{
      'results': instance.newandhot,
    };

NewAndHotResult _$NewAndHotResultFromJson(Map<String, dynamic> json) =>
    NewAndHotResult(
      id: json['key'] as String?,
      movietitle: json['title'] as String?,
      overview: json['overview'] as String?,
      posterpath: json['poster_path'] as String?,
      releasedate: json['release_date'] as String?,
    );

Map<String, dynamic> _$NewAndHotResultToJson(NewAndHotResult instance) =>
    <String, dynamic>{
      'key': instance.id,
      'title': instance.movietitle,
      'overview': instance.overview,
      'poster_path': instance.posterpath,
      'release_date': instance.releasedate,
    };
