part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<Result> drama,
    required bool isLoading,
    required bool isError,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState(
        drama: [],
        isLoading: true,
        isError: false,
      );
}
