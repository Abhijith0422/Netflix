import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_spoof/presentation/search/widgets/searchwidgettitle.dart';
import '../../../application/search/search_bloc.dart';
import '../../../infrastructure/apikey.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: SearchPageTitle(title: 'Movies & TV'),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                  childAspectRatio: 1 / 1.5,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: List.generate(state.searchResults.length, (index) {
                    final imageurl =
                        '$imageappendUrl${state.searchResults[index].searchPosterPath}';

                    return MainCard(
                      imageurl: imageurl,
                    );
                  }));
            },
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageurl;
  const MainCard({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: imageurl.isEmpty ||
                      imageurl == 'https://image.tmdb.org/t/p/w500null'
                  ? const AssetImage('assets/noimage.jpg') as ImageProvider
                  : NetworkImage(imageurl),
              fit: BoxFit.cover)),
    );
  }
}
