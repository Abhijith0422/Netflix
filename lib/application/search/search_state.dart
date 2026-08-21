part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResult> searchResults,
    required List<Trending> trendingResults,
    required bool isLoading,
    required bool isfailure,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        searchResults: [],
        trendingResults: [],
        isLoading: false,
        isfailure: false,
      );
}
