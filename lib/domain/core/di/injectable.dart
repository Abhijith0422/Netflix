import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_spoof/domain/core/di/injectable.config.dart';
import 'package:netflix_spoof/infrastructure/NewandHot/new_and_hot_repo.dart';
import 'package:netflix_spoof/infrastructure/home/homerepo.dart';
import 'package:netflix_spoof/infrastructure/home/toptvshows/toptvshows.dart';

import '../../../infrastructure/downloads/downloads_repo.dart';
import '../../../infrastructure/search/search_repo.dart';
import '../../../infrastructure/top10/top10_repo.dart';

final getit = GetIt.instance;
@InjectableInit(
  initializerName: 'init',
)
Future<void> configureInjection() async {
  getit.init(environment: Environment.prod);
}

@module
abstract class RegisterModule {
  @lazySingleton
  DownloadRepo get downloadRepo;
  @lazySingleton
  SearchRepo get searchRepo;
  @lazySingleton
  NewAndHotRepo get newAndHotRepo;
  @lazySingleton
  EveryoneWatchingRepo get everyoneWatchingRepo;
  @lazySingleton
  HomeRepo get homeRepo;
  @lazySingleton
  TopTvshowRepo get topTvshowRepo;
  @lazySingleton
  Top10Repo get top10Repo;
}
