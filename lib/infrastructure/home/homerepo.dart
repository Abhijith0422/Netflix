import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/api_endpoints.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/home/tensedramas/homehazard.dart';
import 'package:netflix_spoof/domain/home/tensedramas/mode/mode.dart';

@LazySingleton(as: HomeHazardRepo)
class HomeRepo implements HomeHazardRepo {
  @override
  Future<Either<MainFailure, Mode>> getdrama() async {
    try {
      final Response response1 =
          await Dio(BaseOptions()).get(Apiendpoints.dramas);

      if (response1.statusCode == 200 || response1.statusCode == 201) {
        final result = Mode.fromJson(response1.data);
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
