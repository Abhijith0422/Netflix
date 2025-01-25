import 'package:dartz/dartz.dart';
import 'package:netflix_spoof/domain/home/tensedramas/topshows/models/top_t_vshows/toptvshows/result.dart';

import '../../../core/failures/main_failures.dart';

abstract class TVShowsHazardRepo {
  Future<Either<MainFailure, TopTVShowsResultList>> gettvshows();
}
