import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_spoof/application/downloads/downloads_bloc.dart';
import 'package:netflix_spoof/colors/colors.dart';

import 'package:netflix_spoof/infrastructure/apikey.dart';

final widgetlist = [
  const _SmartDownloads(),
  const SectionTwo(),
  const SectionThree(),
];

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: textcolor,
        ),
        SizedBox(width: 10),
        Text(
          'Smart Downloads',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(height: 10),
        const Text(
          textAlign: TextAlign.center,
          'Introducing Downloads for You',
          style: TextStyle(
              color: textcolor, fontWeight: FontWeight.bold, fontSize: 28),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
          child: Text(
            textAlign: TextAlign.center,
            'We will download a few episodes of a show  \n you might like and delete them after\n you have watched them.You \ncan always turn this \noff in settings.',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state.failureOrTrending.fold(() => false, (a) => a.isLeft())) {
              return const Center(
                  child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Check your internet connection'),
              ));
            }
            if (state.trending.isEmpty && (state.isLoading == false)) {
              return const Center(
                  child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('No Trending Movies'),
              ));
            }
            return Container(
              width: size.width,
              height: size.width,
              color: backgroundcolor,
              child: state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    )
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                            child: CircleAvatar(
                          backgroundColor: circleavatarbackground,
                          radius: size.width * 0.32,
                        )),
                        RotateImageWidget(
                          imagelist:
                              '$imageappendUrl${state.trending[1].posterPath}',
                          margin: const EdgeInsets.only(left: 130, bottom: 10),
                          angle: 0.2,
                        ),
                        RotateImageWidget(
                            imagelist:
                                '$imageappendUrl${state.trending[3].posterPath}',
                            margin:
                                const EdgeInsets.only(right: 130, bottom: 10),
                            angle: -0.2),
                        RotateImageWidget(
                          imagelist:
                              '$imageappendUrl${state.trending[2].posterPath}',
                          margin: const EdgeInsets.only(),
                          angle: 0,
                          height: 0.48,
                        ),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
                  backgroundColor:
                      WidgetStateProperty.all(buttonbackgroubdcolor)),
              child: const Text(
                'Set up',
                style: TextStyle(
                    color: textcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(44, 2, 44, 8),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
                  backgroundColor: WidgetStateProperty.all(whitebackground)),
              child: const Text(
                'See What You Can Download',
                style: TextStyle(
                    color: buttonTextcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RotateImageWidget extends StatelessWidget {
  const RotateImageWidget(
      {super.key,
      required this.imagelist,
      this.angle = 0,
      required this.margin,
      this.height = 0.45});
  final double angle;
  final String imagelist;
  final EdgeInsets margin;
  final double height;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle,
      child: Container(
        margin: margin,
        width: size.width * 0.37,
        height: size.width * height,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(2)),
            image: DecorationImage(
                image: NetworkImage(imagelist), fit: BoxFit.cover)),
      ),
    );
  }
}
