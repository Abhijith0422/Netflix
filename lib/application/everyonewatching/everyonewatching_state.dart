part of 'everyonewatching_bloc.dart';

@freezed
class EveryonewatchingState with _$EveryonewatchingState {
  const factory EveryonewatchingState({
    required List<EveryoneWatchingResult> popular,
    required bool isLoading,
    required bool isError,
  }) = _EveryonewatchingState;
  factory EveryonewatchingState.initial() => const EveryonewatchingState(
        popular: [],
        isLoading: true,
        isError: false,
      );
}
