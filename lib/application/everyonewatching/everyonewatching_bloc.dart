import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/newAndhot/everyonewatching/everyonewatchingrepo.dart';

import 'package:netflix_spoof/domain/newAndhot/everyonewatching/models/result.dart';
part 'everyonewatching_bloc.freezed.dart';
part 'everyonewatching_event.dart';
part 'everyonewatching_state.dart';

@injectable
class EveryonewatchingBloc
    extends Bloc<EveryonewatchingEvent, EveryonewatchingState> {
  EveryonewatchingBloc(EveryoneWatchingHazardRepo popularlist)
      : super(EveryonewatchingState.initial()) {
    on<_Intialize>((event, emit) {
      emit(const EveryonewatchingState(
        popular: [],
        isLoading: true,
        isError: false,
      ));
    });
    on<_Popular>((event, emit) async {
      final result = await popularlist.getpopular();

      result.fold((MainFailure fail) {
        emit(const EveryonewatchingState(
          popular: [],
          isLoading: false,
          isError: true,
        ));
      }, (list) {
        return emit(
          EveryonewatchingState(
            popular: list.everyonewatchingresults ?? [],
            isLoading: false,
            isError: false,
          ),
        );
      });
    });
  }
}
