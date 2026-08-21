import 'package:dartz/dartz.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/top10/top10models/top10models.dart';

abstract class Top10HazardRepo {
  Future<Either<MainFailure, Top10models>> gettop10();
}
