part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Trending> trending,
    required Option<Either<MainFailure, List<Trending>>> failureOrTrending,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: false,
      trending: [],
      failureOrTrending: None(),
    );
  }
}
