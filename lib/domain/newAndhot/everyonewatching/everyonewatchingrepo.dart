import 'package:dartz/dartz.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/newAndhot/everyonewatching/models/models.dart';

abstract class EveryoneWatchingHazardRepo {
  Future<Either<MainFailure, EveryoneWatchingModels>> getpopular();
}
