import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_spoof/presentation/search/widgets/searchwidgettitle.dart';

import '../../../application/search/search_bloc.dart';
import '../../../infrastructure/apikey.dart';

class IdleSearch extends StatelessWidget {
  const IdleSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: SearchPageTitle(title: 'Top Searches'),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state.isfailure) {
                return const Center(
                  child: Text(
                      'An Unexpected Error Occured \n   Check your Connection'),
                );
              } else if (state.trendingResults.isEmpty) {
                return const Center(
                  child: Text('No Movies Found'),
                );
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: ((ctx, index) {
                    final movie = state.trendingResults[index];

                    return TopSearchitemTile(
                      img: '$imageappendUrl${movie.posterPath}',
                      title: movie.originalTitle ?? movie.originalname ?? '',
                    );
                  }),
                  separatorBuilder: (ctx, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: state.trendingResults.length);
            },
          ),
        )
      ],
    );
  }
}

class TopSearchitemTile extends StatelessWidget {
  final String img;
  final String title;
  const TopSearchitemTile({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Container(
            width: size.width * 0.35,
            height: 80,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(53, 158, 158, 158),
            ),
          ),
        ),
        Expanded(
            child: Text(
          title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
        const Icon(
          CupertinoIcons.play_circle,
          color: Colors.white,
          size: 50,
        )
      ],
    );
  }
}
