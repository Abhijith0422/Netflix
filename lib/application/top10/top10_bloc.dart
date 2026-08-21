import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:netflix_spoof/domain/top10/top10models/result.dart';

import '../../domain/core/failures/main_failures.dart';

import '../../domain/top10/top10hazardrepo.dart';

part 'top10_event.dart';
part 'top10_state.dart';

part 'top10_bloc.freezed.dart';

@injectable
class Top10Bloc extends Bloc<Top10Event, Top10State> {
  Top10Bloc(Top10HazardRepo top10list) : super(Top10State.initial()) {
    on<_Intialize>((event, emit) {
      emit(const Top10State(
        top10: [],
        isLoading: true,
        isError: false,
      ));
    });
    on<_Top10>((event, emit) async {
      final result = await top10list.gettop10();

      result.fold((MainFailure fail) {
        emit(const Top10State(
          top10: [],
          isLoading: false,
          isError: true,
        ));
      }, (list) {
        return emit(
          Top10State(
            top10: list.results ?? [],
            isLoading: false,
            isError: false,
          ),
        );
      });
    });
  }
}
