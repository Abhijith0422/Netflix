part of 'toptvshows_bloc.dart';

@freezed
class ToptvshowsState with _$ToptvshowsState {
  const factory ToptvshowsState({
    required List<TopTVShowsResult> tvshows,
    required bool isLoading,
    required bool isError,
  }) = _ToptvshowsState;

  factory ToptvshowsState.initial() => ToptvshowsState(
        tvshows: [],
        isLoading: false,
        isError: false,
      );
}
