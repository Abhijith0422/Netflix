import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/downloads/hazards_repo.dart';
import 'package:netflix_spoof/domain/downloads/models/downloads.dart';
import 'package:netflix_spoof/domain/search/searchhazardsrepo.dart';

import '../../domain/search/models/search.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final HazardsRepo _trendingHazardRepo;
  final SearchHazardRepo _searchHazardRepo;
  SearchBloc(this._searchHazardRepo, this._trendingHazardRepo)
      : super(SearchState.initial()) {
//idlestate
    on<_Intialize>((event, emit) async {
      if (state.trendingResults.isNotEmpty) {
        emit(SearchState(
            searchResults: [],
            isfailure: false,
            isLoading: false,
            trendingResults: state.trendingResults));
        return;
      }
      emit(const SearchState(
          searchResults: [],
          isfailure: false,
          isLoading: true,
          trendingResults: []));
      //get trending movies
      final result = await _trendingHazardRepo.gettrending();
      result.fold((MainFailure failure) {
        emit(const SearchState(
            searchResults: [],
            isfailure: true,
            isLoading: false,
            trendingResults: []));
      }, (List<Trending> list) {
        emit(SearchState(
            searchResults: [],
            isfailure: false,
            isLoading: false,
            trendingResults: list));
      });
      //show trending movies
    });

//searchstate
    on<_SearchMovie>((event, emit) async {
      //call api
      emit(const SearchState(
          searchResults: [],
          isfailure: false,
          isLoading: true,
          trendingResults: []));
      final result = await _searchHazardRepo.searchmovies(query: event.query);
      result.fold((MainFailure failure) {
        emit(const SearchState(
            searchResults: [],
            isfailure: true,
            isLoading: false,
            trendingResults: []));
      }, (SearchResponse response) {
        emit(SearchState(
            searchResults: response.searchResults ?? [],
            isfailure: false,
            isLoading: false,
            trendingResults: []));
      });
      //show search results
    });
  }
}
