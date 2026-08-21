// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  @JsonKey(name: 'poster_path')
  String? get searchPosterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get searchMovieId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get searchOriginalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get searchBackdropPath => throw _privateConstructorUsedError;

  /// Serializes this SearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'poster_path') String? searchPosterPath,
      @JsonKey(name: 'id') int? searchMovieId,
      @JsonKey(name: 'title') String? searchOriginalTitle,
      @JsonKey(name: 'backdrop_path') String? searchBackdropPath});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchPosterPath = freezed,
    Object? searchMovieId = freezed,
    Object? searchOriginalTitle = freezed,
    Object? searchBackdropPath = freezed,
  }) {
    return _then(_value.copyWith(
      searchPosterPath: freezed == searchPosterPath
          ? _value.searchPosterPath
          : searchPosterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      searchMovieId: freezed == searchMovieId
          ? _value.searchMovieId
          : searchMovieId // ignore: cast_nullable_to_non_nullable
              as int?,
      searchOriginalTitle: freezed == searchOriginalTitle
          ? _value.searchOriginalTitle
          : searchOriginalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      searchBackdropPath: freezed == searchBackdropPath
          ? _value.searchBackdropPath
          : searchBackdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultImplCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$SearchResultImplCopyWith(
          _$SearchResultImpl value, $Res Function(_$SearchResultImpl) then) =
      __$$SearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'poster_path') String? searchPosterPath,
      @JsonKey(name: 'id') int? searchMovieId,
      @JsonKey(name: 'title') String? searchOriginalTitle,
      @JsonKey(name: 'backdrop_path') String? searchBackdropPath});
}

/// @nodoc
class __$$SearchResultImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchResultImpl>
    implements _$$SearchResultImplCopyWith<$Res> {
  __$$SearchResultImplCopyWithImpl(
      _$SearchResultImpl _value, $Res Function(_$SearchResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchPosterPath = freezed,
    Object? searchMovieId = freezed,
    Object? searchOriginalTitle = freezed,
    Object? searchBackdropPath = freezed,
  }) {
    return _then(_$SearchResultImpl(
      searchPosterPath: freezed == searchPosterPath
          ? _value.searchPosterPath
          : searchPosterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      searchMovieId: freezed == searchMovieId
          ? _value.searchMovieId
          : searchMovieId // ignore: cast_nullable_to_non_nullable
              as int?,
      searchOriginalTitle: freezed == searchOriginalTitle
          ? _value.searchOriginalTitle
          : searchOriginalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      searchBackdropPath: freezed == searchBackdropPath
          ? _value.searchBackdropPath
          : searchBackdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultImpl implements _SearchResult {
  const _$SearchResultImpl(
      {@JsonKey(name: 'poster_path') required this.searchPosterPath,
      @JsonKey(name: 'id') required this.searchMovieId,
      @JsonKey(name: 'title') required this.searchOriginalTitle,
      @JsonKey(name: 'backdrop_path') required this.searchBackdropPath});

  factory _$SearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultImplFromJson(json);

  @override
  @JsonKey(name: 'poster_path')
  final String? searchPosterPath;
  @override
  @JsonKey(name: 'id')
  final int? searchMovieId;
  @override
  @JsonKey(name: 'title')
  final String? searchOriginalTitle;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? searchBackdropPath;

  @override
  String toString() {
    return 'SearchResult(searchPosterPath: $searchPosterPath, searchMovieId: $searchMovieId, searchOriginalTitle: $searchOriginalTitle, searchBackdropPath: $searchBackdropPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultImpl &&
            (identical(other.searchPosterPath, searchPosterPath) ||
                other.searchPosterPath == searchPosterPath) &&
            (identical(other.searchMovieId, searchMovieId) ||
                other.searchMovieId == searchMovieId) &&
            (identical(other.searchOriginalTitle, searchOriginalTitle) ||
                other.searchOriginalTitle == searchOriginalTitle) &&
            (identical(other.searchBackdropPath, searchBackdropPath) ||
                other.searchBackdropPath == searchBackdropPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, searchPosterPath, searchMovieId,
      searchOriginalTitle, searchBackdropPath);

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      __$$SearchResultImplCopyWithImpl<_$SearchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultImplToJson(
      this,
    );
  }
}

abstract class _SearchResult implements SearchResult {
  const factory _SearchResult(
      {@JsonKey(name: 'poster_path') required final String? searchPosterPath,
      @JsonKey(name: 'id') required final int? searchMovieId,
      @JsonKey(name: 'title') required final String? searchOriginalTitle,
      @JsonKey(name: 'backdrop_path')
      required final String? searchBackdropPath}) = _$SearchResultImpl;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$SearchResultImpl.fromJson;

  @override
  @JsonKey(name: 'poster_path')
  String? get searchPosterPath;
  @override
  @JsonKey(name: 'id')
  int? get searchMovieId;
  @override
  @JsonKey(name: 'title')
  String? get searchOriginalTitle;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get searchBackdropPath;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
