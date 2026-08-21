import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/api_endpoints.dart';

import '../../../domain/core/failures/main_failures.dart';
import '../../../domain/home/tensedramas/topshows/models/top_t_vshows/toptvshows/result.dart';
import '../../../domain/home/tensedramas/topshows/topshowhazardrepo.dart';

@LazySingleton(as: TVShowsHazardRepo)
class TopTvshowRepo implements TVShowsHazardRepo {
  @override
  Future<Either<MainFailure, TopTVShowsResultList>> gettvshows() async {
    try {
      final Response response1 =
          await Dio(BaseOptions()).get(Apiendpoints.toptvshows);

      if (response1.statusCode == 200 || response1.statusCode == 201) {
        final result = TopTVShowsResultList.fromJson(response1.data);

        return Right(result);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clientFailure());
    }
  }
}
