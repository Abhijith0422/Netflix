part of 'newandhot_bloc.dart';

@freezed
class NewandhotState with _$NewandhotState {
  const factory NewandhotState({
    required List<NewAndHotResult> upcoming,
    required bool isLoading,
    required bool isError,
  }) = _NewandhotState;
  factory NewandhotState.initial() => const NewandhotState(
        upcoming: [],
        isLoading: true,
        isError: false,
      );
}
