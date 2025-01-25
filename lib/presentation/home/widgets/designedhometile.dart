import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_spoof/application/top10/top10_bloc.dart';
import 'package:netflix_spoof/presentation/home/widgets/homecard.dart';
import 'package:netflix_spoof/presentation/home/widgets/title.dart';

class DesignedHomeTile extends StatelessWidget {
  const DesignedHomeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Top10Bloc, Top10State>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Subtitles(title: 'Top 10 TV Shows in India Today'),
            const SizedBox(
              height: 10,
            ),
            LimitedBox(
              maxHeight: 200,
              child: ListView.separated(
                itemBuilder: (ctx, index) {
                  return DesignedHomeCardContainer(index: index);
                },
                separatorBuilder: (ctx, index) {
                  return const SizedBox(
                    width: 0,
                  );
                },
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        );
      },
    );
  }
}
