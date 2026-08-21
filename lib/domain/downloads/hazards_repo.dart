import 'package:dartz/dartz.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/downloads/models/downloads.dart';

abstract class HazardsRepo {
  Future<Either<MainFailure, List<Trending>>> gettrending();
}
