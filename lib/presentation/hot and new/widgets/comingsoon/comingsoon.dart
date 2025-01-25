import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_spoof/application/newandhot/newandhot_bloc.dart';
import 'package:netflix_spoof/colors/colors.dart';

import 'comingsoonmoviecard.dart';

class ComingsoonPage extends StatelessWidget {
  final int index;
  const ComingsoonPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewandhotBloc, NewandhotState>(
      builder: (context, state) {
        DateTime parsedDate =
            DateTime.parse(state.upcoming[index].releasedate ?? '');
        String formatMonth = DateFormat('MMM').format(parsedDate);
        String formatDay = DateFormat('d').format(parsedDate);
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.isError) {
          return const Center(child: Text('Error loading movies'));
        } else if (state.upcoming.isEmpty) {
          return const Center(child: Text('No upcoming movies available'));
        } else {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    formatMonth,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Text(
                    formatDay,
                    style: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: textcolor),
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 12, 0, 15),
                    child: ComingSoonMovieCard(index: index)),
              ),
            ],
          );
        }
      },
    );
  }
}
