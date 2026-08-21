import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_spoof/application/everyonewatching/everyonewatching_bloc.dart';
import 'package:netflix_spoof/infrastructure/apikey.dart';

class EveryoneWatchingMovieCard extends StatelessWidget {
  final int index;
  const EveryoneWatchingMovieCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EveryonewatchingBloc, EveryonewatchingState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                '$imageappendUrl${state.popular[index].backdropPath}'),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      height: 35,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(210, 0, 0, 0),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_off_outlined,
                            color: Colors.white,
                            size: 20,
                          )),
                    ),
                  ),
                ],
              ),
              _titlecard('${state.popular[index].title}'),
              const SizedBox(height: 15),
              _netflixfilmlogo(),
              const SizedBox(height: 4),
              _movietitle('${state.popular[index].title}'),
              const SizedBox(height: 8),
              Expanded(child: _overview('${state.popular[index].overview}')),
            ],
          ),
        );
      },
    );
  }

  Text _movietitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Text _overview(String overview) {
    return Text(
      overview,
      style: const TextStyle(color: Colors.grey),
      overflow: TextOverflow.ellipsis,
      maxLines: 4,
    );
  }

  Row _netflixfilmlogo() {
    return Row(
      children: [
        Image.asset(
          'assets/netflixfilm.png',
          height: 15,
          width: 15,
        ),
        const Expanded(
            child: Text('FILM',
                style: TextStyle(
                  letterSpacing: 3,
                  fontSize: 8,
                  color: Colors.grey,
                ))),
      ],
    );
  }

  Padding _titlecard(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Wrap(children: [
              AutoSizeText(
                title,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                minFontSize: 18,
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconwithtextbottom(Icons.send, 'Share', -0.7, 20, 10),
                const SizedBox(
                  width: 15,
                ),
                iconwithtextbottom(Icons.add, 'My List', 0, 30, 0),
                const SizedBox(
                  width: 15,
                ),
                iconwithtextbottom(Icons.play_arrow, 'Play', 0, 30, 0),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column iconwithtextbottom(
      IconData icon, String text, double angle, double size, double bottom) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, bottom),
          child: Transform.rotate(
            angle: angle,
            child: Icon(
              icon,
              color: Colors.white,
              size: size,
            ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
