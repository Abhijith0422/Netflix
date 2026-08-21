// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EveryoneWatchingModels _$EveryoneWatchingModelsFromJson(
        Map<String, dynamic> json) =>
    EveryoneWatchingModels(
      everyonewatchingresults: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  EveryoneWatchingResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EveryoneWatchingModelsToJson(
        EveryoneWatchingModels instance) =>
    <String, dynamic>{
      'results': instance.everyonewatchingresults,
    };
