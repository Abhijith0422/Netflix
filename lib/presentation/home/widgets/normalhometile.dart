import 'package:flutter/material.dart';
import 'package:netflix_spoof/presentation/home/widgets/homecard.dart';
import 'package:netflix_spoof/presentation/home/widgets/title.dart';

class HomeTileNormal extends StatelessWidget {
  final String title;
  final List img;
  const HomeTileNormal({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Subtitles(title: title),
        const SizedBox(
          height: 10,
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
            itemBuilder: (ctx, index) {
              return HomeCardContainer(
                containername: title,
                index: index,
                url: img[index],
              );
            },
            separatorBuilder: (ctx, index) {
              return const SizedBox(
                width: 10,
              );
            },
            itemCount: img.length,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
