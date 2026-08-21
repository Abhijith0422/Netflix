import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/api_endpoints.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';

import 'package:netflix_spoof/domain/newAndhot/comingsoons/models/new_and_hot.dart';
import 'package:netflix_spoof/domain/newAndhot/comingsoons/newandhotrepo.dart';
import 'package:netflix_spoof/domain/newAndhot/everyonewatching/everyonewatchingrepo.dart';
import 'package:netflix_spoof/domain/newAndhot/everyonewatching/models/models.dart';

@LazySingleton(as: NewandHotHazardRepo)
class NewAndHotRepo implements NewandHotHazardRepo {
  @override
  Future<Either<MainFailure, NewAndHotResp>> getupcoming() async {
    try {
      final Response response1 =
          await Dio(BaseOptions()).get(Apiendpoints.upcoming);

      if (response1.statusCode == 200 || response1.statusCode == 201) {
        final result = NewAndHotResp.fromJson(response1.data);
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

@LazySingleton(as: EveryoneWatchingHazardRepo)
class EveryoneWatchingRepo implements EveryoneWatchingHazardRepo {
  @override
  Future<Either<MainFailure, EveryoneWatchingModels>> getpopular() async {
    try {
      final Response response1 =
          await Dio(BaseOptions()).get(Apiendpoints.popular);

      if (response1.statusCode == 200 || response1.statusCode == 201) {
        final result = EveryoneWatchingModels.fromJson(response1.data);

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
