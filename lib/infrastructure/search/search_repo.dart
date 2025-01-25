import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/api_endpoints.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';

import 'package:netflix_spoof/domain/search/searchhazardsrepo.dart';

import '../../domain/search/models/search.dart';

@LazySingleton(as: SearchHazardRepo)
class SearchRepo implements SearchHazardRepo {
  @override
  Future<Either<MainFailure, SearchResponse>> searchmovies(
      {required String query}) async {
    try {
      final Response response = await Dio(BaseOptions())
          .get(Apiendpoints.search, queryParameters: {'query': query});

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponse.fromJson(response.data);

        return Right(result);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }
}
