import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix_spoof/colors/colors.dart';

import '../../../../application/downloads/downloads_bloc.dart';
import 'image.dart';

class Top10Widget extends StatelessWidget {
  const Top10Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.gettrending());
    });
    return BlocBuilder<DownloadsBloc, DownloadsState>(
      builder: (context, state) {
        return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          if (index == 9) const SizedBox(width: 10),
                          if (index != 9) const SizedBox(width: 30),
                          Expanded(
                            child: Column(
                              children: [
                                Top10Image(
                                  image: state.trending[index].posterPath ?? '',
                                ),
                                const SizedBox(height: 10),
                                _titlecard(state.trending[index].originalname ??
                                    state.trending[index].originalTitle ??
                                    ''),
                                _netflixfilmlogo(),
                                const SizedBox(height: 5),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    state.trending[index].originalTitle ??
                                        state.trending[index].originalname ??
                                        '',
                                    style: TextStyle(
                                        color: textcolor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  state.trending[index].overview ?? '',
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ));
            });
      },
    );
  }

  Row _titlecard(String title) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Flexible(
        flex: 2,
        child: Wrap(
          children: [
            AutoSizeText(
              title,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              minFontSize: 18,
            ),
          ],
        ),
      ),
      const Spacer(),
      iconwithtextbottom(Icons.share, 'Share', 0, 25, 5),
      const SizedBox(width: 10),
      iconwithtextbottom(Icons.add, 'My List', 0, 30, 0),
      const SizedBox(width: 10),
      iconwithtextbottom(Icons.play_arrow, 'Play', 0, 30, 0)
    ]);
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

  Row _netflixfilmlogo() {
    return Row(
      children: [
        Image.asset(
          'assets/netflixfilm.png',
          height: 15,
          width: 15,
        ),
        const Expanded(
            child: Text('Top 10',
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 10,
                  color: Colors.grey,
                ))),
      ],
    );
  }
}
