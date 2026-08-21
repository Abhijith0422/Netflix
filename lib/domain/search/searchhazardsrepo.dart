import 'package:dartz/dartz.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';

import 'models/search.dart';

abstract class SearchHazardRepo {
  Future<Either<MainFailure, SearchResponse>> searchmovies(
      {required String query});
}
