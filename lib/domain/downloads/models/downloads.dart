// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class Trending with _$Trending {
  const factory Trending({
    @JsonKey(name: 'poster_path') required String? posterPath,
    @JsonKey(name: 'id') required int? movieid,
    @JsonKey(name: 'title') required String? originalTitle,
    @JsonKey(name: 'name') required String? originalname,
    @JsonKey(name: 'overview') required String? overview,
    @JsonKey(name: 'orginal_title') required double? originalName,
    @JsonKey(name: 'original_language') required String? originallanguage,
  }) = _Trending;

  factory Trending.fromJson(Map<String, dynamic> json) =>
      _$TrendingFromJson(json);
}
