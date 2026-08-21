import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/newAndhot/comingsoons/newandhotrepo.dart';

import '../../domain/newAndhot/comingsoons/models/new_and_hot.dart';

part 'newandhot_event.dart';
part 'newandhot_state.dart';
part 'newandhot_bloc.freezed.dart';

@injectable
class NewandhotBloc extends Bloc<NewandhotEvent, NewandhotState> {
  NewandhotBloc(NewandHotHazardRepo newandhotlist)
      : super(NewandhotState.initial()) {
    on<_Intialize>((event, emit) {
      emit(const NewandhotState(
        upcoming: [],
        isLoading: true,
        isError: false,
      ));
    });
    on<_Upcoming>((event, emit) async {
      final result = await newandhotlist.getupcoming();

      result.fold((MainFailure fail) {
        emit(const NewandhotState(
          upcoming: [],
          isLoading: false,
          isError: true,
        ));
      }, (list) {
        return emit(
          NewandhotState(
            upcoming: list.newandhot ?? [],
            isLoading: false,
            isError: false,
          ),
        );
      });
    });
  }
}
