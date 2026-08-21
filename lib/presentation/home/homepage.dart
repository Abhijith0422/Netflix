// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_spoof/application/everyonewatching/everyonewatching_bloc.dart';
import 'package:netflix_spoof/application/home/home_bloc.dart';
import 'package:netflix_spoof/application/home/topshows/toptvshows_bloc.dart';
import 'package:netflix_spoof/application/top10/top10_bloc.dart';

import 'package:netflix_spoof/colors/colors.dart';
import 'package:netflix_spoof/presentation/home/widgets/designedhometile.dart';
import 'package:netflix_spoof/presentation/home/widgets/homebarwidget.dart';

import 'package:netflix_spoof/presentation/home/widgets/normalhometile.dart';

import '../../application/downloads/downloads_bloc.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> categories = [
    'Tense Dramas',
    'South Indian Cinema',
    'Comedy',
    'Action'
  ];
  String? selectedCategory;
  List<String> extractPosterPaths(List<dynamic> items) {
    return items.map((item) => item.posterPath as String).toList();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.gettrending());
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getdrama());
      BlocProvider.of<EveryonewatchingBloc>(context)
          .add(const EveryonewatchingEvent.getpopular());
      BlocProvider.of<ToptvshowsBloc>(context)
          .add(const ToptvshowsEvent.gettvshows());
      BlocProvider.of<Top10Bloc>(context).add(const Top10Event.gettop10());
    });
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(6),
            child: ValueListenableBuilder(
              builder: (context, value, _) {
                return NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    final ScrollDirection direction = notification.direction;

                    if (direction == ScrollDirection.idle ||
                        direction == ScrollDirection.forward) {
                      return scrollNotifier.value = true;
                    } else {
                      return scrollNotifier.value = false;
                    }
                  },
                  child: BlocBuilder<DownloadsBloc, DownloadsState>(
                    builder: (context, state) {
                      if (state.trending.isEmpty) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Stack(
                        children: [
                          ListView(
                            children: [
                              HomeBarWidget(),
                              BlocBuilder<EveryonewatchingBloc,
                                  EveryonewatchingState>(
                                builder: (context, state) {
                                  final popularPosterPaths =
                                      extractPosterPaths(state.popular);
                                  return HomeTileNormal(
                                    title: 'Released in the Past Year',
                                    img: popularPosterPaths,
                                  );
                                },
                              ),
                              BlocBuilder<DownloadsBloc, DownloadsState>(
                                builder: (context, state) {
                                  final trendingPosterPaths =
                                      extractPosterPaths(state.trending);
                                  return HomeTileNormal(
                                    title: 'Trending Now',
                                    img: trendingPosterPaths,
                                  );
                                },
                              ),
                              DesignedHomeTile(),
                              BlocBuilder<HomeBloc, HomeState>(
                                builder: (context, state) {
                                  final dramaPosterPaths =
                                      extractPosterPaths(state.drama);
                                  return HomeTileNormal(
                                    title: 'Tense Dramas',
                                    img: dramaPosterPaths,
                                  );
                                },
                              ),
                              BlocBuilder<ToptvshowsBloc, ToptvshowsState>(
                                builder: (context, state) {
                                  final tvShowsPosterPaths =
                                      extractPosterPaths(state.tvshows);
                                  // Ensure 'tvshows' is the correct property
                                  return HomeTileNormal(
                                    title: 'Top TV Shows',
                                    img: tvShowsPosterPaths,
                                  );
                                },
                              ),
                            ],
                          ),
                          scrollNotifier.value == true
                              ? AnimatedContainer(
                                  duration: const Duration(seconds: 10),
                                  width: double.infinity,
                                  height: 98,
                                  color: Colors.black.withOpacity(0.6),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            color: Colors.transparent,
                                            child: Image.asset(
                                              'assets/netflixlogo.png',
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                          const Spacer(),
                                          const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                8.0, 0, 5, 8.0),
                                            child: Icon(
                                              size: 28,
                                              Icons.cast,
                                              color: textcolor,
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                5, 0, 8.0, 8.0),
                                            child: Icon(
                                              size: 28,
                                              Icons.account_box,
                                              color: textcolor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                40, 0, 0, 0),
                                            child: TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'TV Shows',
                                                  style: TextStyle(
                                                      color: textcolor),
                                                )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 25),
                                            child: TextButton(
                                                onPressed: () {},
                                                child: const Text('Movies',
                                                    style: TextStyle(
                                                        color: textcolor))),
                                          ),
                                          StatefulBuilder(
                                            builder: (BuildContext context,
                                                StateSetter setState) {
                                              return DropdownButtonHideUnderline(
                                                  child: ButtonTheme(
                                                      alignedDropdown: true,
                                                      child: DropdownButton<
                                                          String>(
                                                        isDense: true,
                                                        value: selectedCategory,
                                                        hint: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: <Widget>[
                                                            const Text(
                                                                'Categories',
                                                                style: TextStyle(
                                                                    color:
                                                                        textcolor)),
                                                            // Using a negative margin to reduce space between text and icon
                                                            Container(
                                                              margin: const EdgeInsets
                                                                  .only(
                                                                  left:
                                                                      0), // Adjust the value as needed
                                                              child: const Icon(
                                                                  Icons
                                                                      .arrow_drop_down,
                                                                  color:
                                                                      textcolor),
                                                            ),
                                                          ],
                                                        ),
                                                        onChanged:
                                                            (String? newValue) {
                                                          setState(() {
                                                            selectedCategory =
                                                                newValue;
                                                          });
                                                        },
                                                        items: categories.map<
                                                            DropdownMenuItem<
                                                                String>>((String
                                                            value) {
                                                          return DropdownMenuItem<
                                                              String>(
                                                            value: value,
                                                            child: Text(value,
                                                                style: const TextStyle(
                                                                    color:
                                                                        textcolor)),
                                                          );
                                                        }).toList(),
                                                        // Hide the default dropdown arrow
                                                        icon: Container(),
                                                        dropdownColor:
                                                            backgroundcolor,
                                                      )));
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      );
                    },
                  ),
                );
              },
              valueListenable: scrollNotifier,
            )));
  }
}
