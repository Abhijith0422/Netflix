import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix_spoof/colors/colors.dart';

import 'package:netflix_spoof/presentation/search/widgets/searchidle.dart';

import '../../application/search/search_bloc.dart';
import '../../domain/core/debouncer/debouncetext.dart';
import 'widgets/search_result.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const SearchEvent.intialize());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4, 10, 4, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Searchfield(),
              Expanded(
                  flex: 1,
                  child: BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                      if (state.searchResults.isEmpty) {
                        return const IdleSearch();
                      } else {
                        return const SearchResultPage();
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class Searchfield extends StatelessWidget {
  final _debouncer = Debouncer(milliseconds: 500);
  final ValueNotifier<double> width = ValueNotifier<double>(0.42);
  Searchfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ValueListenableBuilder(
        valueListenable: width,
        builder: (context, value, _) {
          return CupertinoSearchTextField(
            onChanged: (value) {
              if (value.isEmpty) {
                return;
              }
              _debouncer.run(() {
                BlocProvider.of<SearchBloc>(context)
                    .add(SearchEvent.searchMovie(query: value));
              });
            },
            onTap: () {
              width.value = 0;
            },
            decoration: BoxDecoration(
              color: const Color.fromARGB(53, 158, 158, 158),
              borderRadius: BorderRadius.circular(5),
            ),
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            prefixInsets: EdgeInsetsDirectional.only(
                start: size.width * width.value, end: 5),
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            style: const TextStyle(
              color: textcolor,
            ),
          );
        });
  }
}
