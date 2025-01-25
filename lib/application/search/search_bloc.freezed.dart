// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
    required TResult Function(String query) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intialize,
    TResult? Function(String query)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String query)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialize value) intialize,
    required TResult Function(_SearchMovie value) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialize value)? intialize,
    TResult? Function(_SearchMovie value)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialize value)? intialize,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IntializeImplCopyWith<$Res> {
  factory _$$IntializeImplCopyWith(
          _$IntializeImpl value, $Res Function(_$IntializeImpl) then) =
      __$$IntializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntializeImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$IntializeImpl>
    implements _$$IntializeImplCopyWith<$Res> {
  __$$IntializeImplCopyWithImpl(
      _$IntializeImpl _value, $Res Function(_$IntializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IntializeImpl implements _Intialize {
  const _$IntializeImpl();

  @override
  String toString() {
    return 'SearchEvent.intialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IntializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
    required TResult Function(String query) searchMovie,
  }) {
    return intialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intialize,
    TResult? Function(String query)? searchMovie,
  }) {
    return intialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String query)? searchMovie,
    required TResult orElse(),
  }) {
    if (intialize != null) {
      return intialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialize value) intialize,
    required TResult Function(_SearchMovie value) searchMovie,
  }) {
    return intialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialize value)? intialize,
    TResult? Function(_SearchMovie value)? searchMovie,
  }) {
    return intialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialize value)? intialize,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (intialize != null) {
      return intialize(this);
    }
    return orElse();
  }
}

abstract class _Intialize implements SearchEvent {
  const factory _Intialize() = _$IntializeImpl;
}

/// @nodoc
abstract class _$$SearchMovieImplCopyWith<$Res> {
  factory _$$SearchMovieImplCopyWith(
          _$SearchMovieImpl value, $Res Function(_$SearchMovieImpl) then) =
      __$$SearchMovieImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchMovieImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchMovieImpl>
    implements _$$SearchMovieImplCopyWith<$Res> {
  __$$SearchMovieImplCopyWithImpl(
      _$SearchMovieImpl _value, $Res Function(_$SearchMovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchMovieImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMovieImpl implements _SearchMovie {
  const _$SearchMovieImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchMovie(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMovieImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMovieImplCopyWith<_$SearchMovieImpl> get copyWith =>
      __$$SearchMovieImplCopyWithImpl<_$SearchMovieImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
    required TResult Function(String query) searchMovie,
  }) {
    return searchMovie(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intialize,
    TResult? Function(String query)? searchMovie,
  }) {
    return searchMovie?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String query)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialize value) intialize,
    required TResult Function(_SearchMovie value) searchMovie,
  }) {
    return searchMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialize value)? intialize,
    TResult? Function(_SearchMovie value)? searchMovie,
  }) {
    return searchMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialize value)? intialize,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(this);
    }
    return orElse();
  }
}

abstract class _SearchMovie implements SearchEvent {
  const factory _SearchMovie({required final String query}) = _$SearchMovieImpl;

  String get query;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchMovieImplCopyWith<_$SearchMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<SearchResult> get searchResults => throw _privateConstructorUsedError;
  List<Trending> get trendingResults => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isfailure => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<SearchResult> searchResults,
      List<Trending> trendingResults,
      bool isLoading,
      bool isfailure});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResults = null,
    Object? trendingResults = null,
    Object? isLoading = null,
    Object? isfailure = null,
  }) {
    return _then(_value.copyWith(
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<SearchResult>,
      trendingResults: null == trendingResults
          ? _value.trendingResults
          : trendingResults // ignore: cast_nullable_to_non_nullable
              as List<Trending>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isfailure: null == isfailure
          ? _value.isfailure
          : isfailure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SearchResult> searchResults,
      List<Trending> trendingResults,
      bool isLoading,
      bool isfailure});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResults = null,
    Object? trendingResults = null,
    Object? isLoading = null,
    Object? isfailure = null,
  }) {
    return _then(_$SearchStateImpl(
      searchResults: null == searchResults
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<SearchResult>,
      trendingResults: null == trendingResults
          ? _value._trendingResults
          : trendingResults // ignore: cast_nullable_to_non_nullable
              as List<Trending>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isfailure: null == isfailure
          ? _value.isfailure
          : isfailure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required final List<SearchResult> searchResults,
      required final List<Trending> trendingResults,
      required this.isLoading,
      required this.isfailure})
      : _searchResults = searchResults,
        _trendingResults = trendingResults;

  final List<SearchResult> _searchResults;
  @override
  List<SearchResult> get searchResults {
    if (_searchResults is EqualUnmodifiableListView) return _searchResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  final List<Trending> _trendingResults;
  @override
  List<Trending> get trendingResults {
    if (_trendingResults is EqualUnmodifiableListView) return _trendingResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingResults);
  }

  @override
  final bool isLoading;
  @override
  final bool isfailure;

  @override
  String toString() {
    return 'SearchState(searchResults: $searchResults, trendingResults: $trendingResults, isLoading: $isLoading, isfailure: $isfailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults) &&
            const DeepCollectionEquality()
                .equals(other._trendingResults, _trendingResults) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isfailure, isfailure) ||
                other.isfailure == isfailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchResults),
      const DeepCollectionEquality().hash(_trendingResults),
      isLoading,
      isfailure);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<SearchResult> searchResults,
      required final List<Trending> trendingResults,
      required final bool isLoading,
      required final bool isfailure}) = _$SearchStateImpl;

  @override
  List<SearchResult> get searchResults;
  @override
  List<Trending> get trendingResults;
  @override
  bool get isLoading;
  @override
  bool get isfailure;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
