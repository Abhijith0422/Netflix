// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:netflix_spoof/application/downloads/downloads_bloc.dart'
    as _i466;
import 'package:netflix_spoof/application/everyonewatching/everyonewatching_bloc.dart'
    as _i296;
import 'package:netflix_spoof/application/home/home_bloc.dart' as _i352;
import 'package:netflix_spoof/application/home/topshows/toptvshows_bloc.dart'
    as _i590;
import 'package:netflix_spoof/application/newandhot/newandhot_bloc.dart'
    as _i61;
import 'package:netflix_spoof/application/search/search_bloc.dart' as _i6;
import 'package:netflix_spoof/application/top10/top10_bloc.dart' as _i916;
import 'package:netflix_spoof/domain/core/di/injectable.dart' as _i525;
import 'package:netflix_spoof/domain/downloads/hazards_repo.dart' as _i648;
import 'package:netflix_spoof/domain/home/tensedramas/homehazard.dart' as _i440;
import 'package:netflix_spoof/domain/home/tensedramas/topshows/topshowhazardrepo.dart'
    as _i771;
import 'package:netflix_spoof/domain/newAndhot/comingsoons/newandhotrepo.dart'
    as _i488;
import 'package:netflix_spoof/domain/newAndhot/everyonewatching/everyonewatchingrepo.dart'
    as _i883;
import 'package:netflix_spoof/domain/search/searchhazardsrepo.dart' as _i814;
import 'package:netflix_spoof/domain/top10/top10hazardrepo.dart' as _i661;
import 'package:netflix_spoof/infrastructure/downloads/downloads_repo.dart'
    as _i503;
import 'package:netflix_spoof/infrastructure/home/homerepo.dart' as _i355;
import 'package:netflix_spoof/infrastructure/home/toptvshows/toptvshows.dart'
    as _i344;
import 'package:netflix_spoof/infrastructure/NewandHot/new_and_hot_repo.dart'
    as _i882;
import 'package:netflix_spoof/infrastructure/search/search_repo.dart' as _i915;
import 'package:netflix_spoof/infrastructure/top10/top10_repo.dart' as _i275;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i503.DownloadRepo>(() => registerModule.downloadRepo);
    gh.lazySingleton<_i915.SearchRepo>(() => registerModule.searchRepo);
    gh.lazySingleton<_i882.NewAndHotRepo>(() => registerModule.newAndHotRepo);
    gh.lazySingleton<_i882.EveryoneWatchingRepo>(
        () => registerModule.everyoneWatchingRepo);
    gh.lazySingleton<_i355.HomeRepo>(() => registerModule.homeRepo);
    gh.lazySingleton<_i344.TopTvshowRepo>(() => registerModule.topTvshowRepo);
    gh.lazySingleton<_i275.Top10Repo>(() => registerModule.top10Repo);
    gh.lazySingleton<_i814.SearchHazardRepo>(() => _i915.SearchRepo());
    gh.lazySingleton<_i440.HomeHazardRepo>(() => _i355.HomeRepo());
    gh.lazySingleton<_i648.HazardsRepo>(() => _i503.DownloadRepo());
    gh.lazySingleton<_i488.NewandHotHazardRepo>(() => _i882.NewAndHotRepo());
    gh.lazySingleton<_i883.EveryoneWatchingHazardRepo>(
        () => _i882.EveryoneWatchingRepo());
    gh.factory<_i6.SearchBloc>(() => _i6.SearchBloc(
          gh<_i814.SearchHazardRepo>(),
          gh<_i648.HazardsRepo>(),
        ));
    gh.lazySingleton<_i661.Top10HazardRepo>(() => _i275.Top10Repo());
    gh.factory<_i61.NewandhotBloc>(
        () => _i61.NewandhotBloc(gh<_i488.NewandHotHazardRepo>()));
    gh.factory<_i466.DownloadsBloc>(
        () => _i466.DownloadsBloc(gh<_i648.HazardsRepo>()));
    gh.lazySingleton<_i771.TVShowsHazardRepo>(() => _i344.TopTvshowRepo());
    gh.factory<_i296.EveryonewatchingBloc>(() =>
        _i296.EveryonewatchingBloc(gh<_i883.EveryoneWatchingHazardRepo>()));
    gh.factory<_i352.HomeBloc>(
        () => _i352.HomeBloc(gh<_i440.HomeHazardRepo>()));
    gh.factory<_i590.ToptvshowsBloc>(
        () => _i590.ToptvshowsBloc(gh<_i771.TVShowsHazardRepo>()));
    gh.factory<_i916.Top10Bloc>(
        () => _i916.Top10Bloc(gh<_i661.Top10HazardRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i525.RegisterModule {
  @override
  _i503.DownloadRepo get downloadRepo => _i503.DownloadRepo();

  @override
  _i915.SearchRepo get searchRepo => _i915.SearchRepo();

  @override
  _i882.NewAndHotRepo get newAndHotRepo => _i882.NewAndHotRepo();

  @override
  _i882.EveryoneWatchingRepo get everyoneWatchingRepo =>
      _i882.EveryoneWatchingRepo();

  @override
  _i355.HomeRepo get homeRepo => _i355.HomeRepo();

  @override
  _i344.TopTvshowRepo get topTvshowRepo => _i344.TopTvshowRepo();

  @override
  _i275.Top10Repo get top10Repo => _i275.Top10Repo();
}
