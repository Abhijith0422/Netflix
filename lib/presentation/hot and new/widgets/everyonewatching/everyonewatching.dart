import 'package:flutter/material.dart';

import 'package:netflix_spoof/presentation/hot%20and%20new/widgets/everyonewatching/everyonewatchingmoviecard.dart';

class EveryOneWatching extends StatelessWidget {
  final int index;
  const EveryOneWatching({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 12, 8, 10),
      child: EveryoneWatchingMovieCard(index: index),
    );
  }
}
