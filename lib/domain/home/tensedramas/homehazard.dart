import 'package:dartz/dartz.dart';
import 'package:netflix_spoof/domain/core/failures/main_failures.dart';
import 'package:netflix_spoof/domain/home/tensedramas/mode/mode.dart';

abstract class HomeHazardRepo {
  Future<Either<MainFailure, Mode>> getdrama();
}
