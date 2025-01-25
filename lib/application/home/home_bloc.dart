import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/home/tensedramas/homehazard.dart';

import '../../domain/home/tensedramas/mode/mode.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeHazardRepo homelist) : super(HomeState.initial()) {
    on<_Intialize>((event, emit) {
      emit(const HomeState(
        drama: [],
        isLoading: true,
        isError: false,
      ));
    });
    on<_GetDrama>((event, emit) async {
      final result = await homelist.getdrama();

      result.fold((MainFailure fail) {
        emit(const HomeState(
          drama: [],
          isLoading: false,
          isError: true,
        ));
      }, (list) {
        return emit(
          HomeState(
            drama: list.drama ?? [],
            isLoading: false,
            isError: false,
          ),
        );
      });
    });
  }
}
