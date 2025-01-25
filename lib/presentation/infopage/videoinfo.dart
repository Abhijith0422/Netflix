import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_spoof/application/downloads/downloads_bloc.dart';
import 'package:netflix_spoof/application/home/home_bloc.dart';
import 'package:netflix_spoof/application/home/topshows/toptvshows_bloc.dart';
import 'package:netflix_spoof/infrastructure/apikey.dart';

import '../../application/everyonewatching/everyonewatching_bloc.dart';

import '../../application/top10/top10_bloc.dart';
import '../widgets/appbar_widget.dart';

class Videoinfo extends StatelessWidget {
  final int index;
  final String containername;
  const Videoinfo(
      {super.key, required this.containername, required this.index});

  @override
  Widget build(BuildContext context) {
    if (containername == "Released in the Past Year") {
      return BlocBuilder<EveryonewatchingBloc, EveryonewatchingState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state.isError) {
            return Text("An unexpected error occured");
          }
          return _buildvideo(
              state.popular[index].title ??
                  state.popular[index].originalTitle ??
                  "",
              state.popular[index].backdropPath ?? "",
              state.popular[index].originalLanguage ?? "en",
              state.popular[index].overview ?? "");
        },
      );
    } else if (containername == "Trending Now") {
      return BlocBuilder<DownloadsBloc, DownloadsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state.failureOrTrending.isNone()) {
            return Text("An unexpected error occured");
          }
          return _buildvideo(
              state.trending[index].originalName as String? ??
                  state.trending[index].originalTitle ??
                  "",
              state.trending[index].posterPath ?? "",
              state.trending[index].originallanguage ?? "en",
              state.trending[index].overview ?? "");
        },
      );
    } else if (containername == "Tense Dramas") {
      return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state.isError) {
            return Text("An unexpected error occured");
          }
          return _buildvideo(
              state.drama[index].originalName ?? "",
              state.drama[index].backdropPath ?? "",
              state.drama[index].originalLanguage ?? "en",
              state.drama[index].overview ?? "");
        },
      );
    } else if (containername == "Top TV Shows") {
      return BlocBuilder<ToptvshowsBloc, ToptvshowsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state.isError) {
            return Text("An unexpected error occured");
          }
          return _buildvideo(
              state.tvshows[index].originalName ??
                  state.tvshows[index].name ??
                  "",
              state.tvshows[index].posterPath ?? "",
              state.tvshows[index].orginallang ?? "en",
              state.tvshows[index].overview ?? "");
        },
      );
    } else if (containername == "Top 10 TV Shows in India Today") {
      return BlocBuilder<Top10Bloc, Top10State>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state.isError) {
            return Text("An unexpected error occured");
          }
          return _buildvideo(
              state.top10[index].originalTitle ?? "",
              state.top10[index].posterPath ?? "",
              state.top10[index].originalLanguage ?? "en",
              state.top10[index].overview ?? "");
        },
      );
    }

    return Center(child: const CircularProgressIndicator());
  }

  SafeArea _buildvideo(
      String tittle, String img, String lang, String overview) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBarWid(
            title: "Netflix",
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  Image.network(
                    '$imageappendUrl$img',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 300,
                  ),
                  Center(
                    child: IconButton(
                      icon: Icon(Icons.play_circle_fill,
                          size: 64, color: Colors.red),
                      onPressed: () {
                        // Play button action
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tittle,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Language: $lang',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    overview,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
