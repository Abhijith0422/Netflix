import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/api_endpoints.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/downloads/hazards_repo.dart';
import 'package:netflix_spoof/domain/downloads/models/downloads.dart';

@LazySingleton(as: HazardsRepo)
class DownloadRepo implements HazardsRepo {
  @override
  Future<Either<MainFailure, List<Trending>>> gettrending() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(Apiendpoints.trending);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadlist = (response.data['results'] as List).map((e) {
          return Trending.fromJson(e);
        }).toList();

        if (downloadlist.isNotEmpty) {
          return right(downloadlist);
        } else {
          return left(const MainFailure.serverFailure());
        }
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clientFailure());
    }
  }
}
