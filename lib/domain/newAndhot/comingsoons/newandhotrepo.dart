import 'package:dartz/dartz.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/newAndhot/comingsoons/models/new_and_hot.dart';

abstract class NewandHotHazardRepo {
  Future<Either<MainFailure, NewAndHotResp>> getupcoming();
}
