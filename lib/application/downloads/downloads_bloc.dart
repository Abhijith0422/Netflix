import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/downloads/hazards_repo.dart';

import '../../domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final HazardsRepo _hazardsRepo;
  DownloadsBloc(this._hazardsRepo) : super(DownloadsState.initial()) {
    on<_TrendingImages>((event, emit) async {
      if (state.trending.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          trending: state.trending,
          failureOrTrending: some(right(state.trending)),
        ));
        return;
      }
      emit(state.copyWith(isLoading: true, failureOrTrending: none()));
      final Either<MainFailure, List<Trending>> downloadOption =
          await _hazardsRepo.gettrending();

      downloadOption.fold(
          (failure) => emit(
                state.copyWith(
                  isLoading: false,
                  failureOrTrending: some(left(failure)),
                ),
              ),
          (success) => emit(state.copyWith(
                isLoading: false,
                trending: success,
                failureOrTrending: some(right(success)),
              )));
    });
  }
}
