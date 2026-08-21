part of 'top10_bloc.dart';

@freezed
class Top10State with _$Top10State {
  const factory Top10State({
    required List<Top10Result> top10,
    required bool isLoading,
    required bool isError,
  }) = _Top10State;
  factory Top10State.initial() => const Top10State(
        top10: [],
        isLoading: true,
        isError: false,
      );
}
