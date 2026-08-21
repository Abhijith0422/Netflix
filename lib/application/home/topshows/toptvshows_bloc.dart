import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/home/tensedramas/topshows/models/top_t_vshows/toptvshows/result.dart';
import 'package:netflix_spoof/domain/home/tensedramas/topshows/topshowhazardrepo.dart';

import '../../../domain/core/failures/main_failures.dart';

part 'toptvshows_event.dart';
part 'toptvshows_state.dart';
part 'toptvshows_bloc.freezed.dart';

@injectable
class ToptvshowsBloc extends Bloc<ToptvshowsEvent, ToptvshowsState> {
  ToptvshowsBloc(TVShowsHazardRepo tvshowlist)
      : super(ToptvshowsState.initial()) {
    on<_Intialize>((event, emit) {
      emit(ToptvshowsState(
        tvshows: [],
        isLoading: true,
        isError: false,
      ));
    });
    on<_shows>((event, emit) async {
      final result = await tvshowlist.gettvshows();

      result.fold((MainFailure fail) {
        emit(ToptvshowsState(
          tvshows: [],
          isLoading: false,
          isError: true,
        ));
      }, (list) {
        return emit(
          ToptvshowsState(
            tvshows: list.tvshowlist ?? [],
            isLoading: false,
            isError: false,
          ),
        );
      });
    });
  }
}
