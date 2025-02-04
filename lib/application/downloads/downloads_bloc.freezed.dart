// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gettrending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gettrending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gettrending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrendingImages value) gettrending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrendingImages value)? gettrending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrendingImages value)? gettrending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TrendingImagesImplCopyWith<$Res> {
  factory _$$TrendingImagesImplCopyWith(_$TrendingImagesImpl value,
          $Res Function(_$TrendingImagesImpl) then) =
      __$$TrendingImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrendingImagesImplCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$TrendingImagesImpl>
    implements _$$TrendingImagesImplCopyWith<$Res> {
  __$$TrendingImagesImplCopyWithImpl(
      _$TrendingImagesImpl _value, $Res Function(_$TrendingImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TrendingImagesImpl implements _TrendingImages {
  const _$TrendingImagesImpl();

  @override
  String toString() {
    return 'DownloadsEvent.gettrending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrendingImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gettrending,
  }) {
    return gettrending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gettrending,
  }) {
    return gettrending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gettrending,
    required TResult orElse(),
  }) {
    if (gettrending != null) {
      return gettrending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrendingImages value) gettrending,
  }) {
    return gettrending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrendingImages value)? gettrending,
  }) {
    return gettrending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrendingImages value)? gettrending,
    required TResult orElse(),
  }) {
    if (gettrending != null) {
      return gettrending(this);
    }
    return orElse();
  }
}

abstract class _TrendingImages implements DownloadsEvent {
  const factory _TrendingImages() = _$TrendingImagesImpl;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Trending> get trending => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Trending>>> get failureOrTrending =>
      throw _privateConstructorUsedError;

  /// Create a copy of DownloadsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res, DownloadsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Trending> trending,
      Option<Either<MainFailure, List<Trending>>> failureOrTrending});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res, $Val extends DownloadsState>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? trending = null,
    Object? failureOrTrending = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<Trending>,
      failureOrTrending: null == failureOrTrending
          ? _value.failureOrTrending
          : failureOrTrending // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Trending>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsStateImplCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$DownloadsStateImplCopyWith(_$DownloadsStateImpl value,
          $Res Function(_$DownloadsStateImpl) then) =
      __$$DownloadsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Trending> trending,
      Option<Either<MainFailure, List<Trending>>> failureOrTrending});
}

/// @nodoc
class __$$DownloadsStateImplCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res, _$DownloadsStateImpl>
    implements _$$DownloadsStateImplCopyWith<$Res> {
  __$$DownloadsStateImplCopyWithImpl(
      _$DownloadsStateImpl _value, $Res Function(_$DownloadsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? trending = null,
    Object? failureOrTrending = null,
  }) {
    return _then(_$DownloadsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      trending: null == trending
          ? _value._trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<Trending>,
      failureOrTrending: null == failureOrTrending
          ? _value.failureOrTrending
          : failureOrTrending // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Trending>>>,
    ));
  }
}

/// @nodoc

class _$DownloadsStateImpl implements _DownloadsState {
  const _$DownloadsStateImpl(
      {required this.isLoading,
      required final List<Trending> trending,
      required this.failureOrTrending})
      : _trending = trending;

  @override
  final bool isLoading;
  final List<Trending> _trending;
  @override
  List<Trending> get trending {
    if (_trending is EqualUnmodifiableListView) return _trending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trending);
  }

  @override
  final Option<Either<MainFailure, List<Trending>>> failureOrTrending;

  @override
  String toString() {
    return 'DownloadsState(isLoading: $isLoading, trending: $trending, failureOrTrending: $failureOrTrending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._trending, _trending) &&
            (identical(other.failureOrTrending, failureOrTrending) ||
                other.failureOrTrending == failureOrTrending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_trending), failureOrTrending);

  /// Create a copy of DownloadsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      __$$DownloadsStateImplCopyWithImpl<_$DownloadsStateImpl>(
          this, _$identity);
}

abstract class _DownloadsState implements DownloadsState {
  const factory _DownloadsState(
      {required final bool isLoading,
      required final List<Trending> trending,
      required final Option<Either<MainFailure, List<Trending>>>
          failureOrTrending}) = _$DownloadsStateImpl;

  @override
  bool get isLoading;
  @override
  List<Trending> get trending;
  @override
  Option<Either<MainFailure, List<Trending>>> get failureOrTrending;

  /// Create a copy of DownloadsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
