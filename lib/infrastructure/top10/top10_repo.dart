import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/top10/top10models/top10models.dart';

import '../../domain/core/api_endpoints.dart';

import '../../domain/top10/top10hazardrepo.dart';

@LazySingleton(as: Top10HazardRepo)
class Top10Repo implements Top10HazardRepo {
  @override
  Future<Either<MainFailure, Top10models>> gettop10() async {
    try {
      final Response response1 =
          await Dio(BaseOptions()).get(Apiendpoints.top10movie);

      if (response1.statusCode == 200 || response1.statusCode == 201) {
        final result = Top10models.fromJson(response1.data);

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
