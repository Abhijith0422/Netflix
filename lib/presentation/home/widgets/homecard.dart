import 'package:bordered_text/bordered_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix_spoof/application/top10/top10_bloc.dart';
import 'package:netflix_spoof/infrastructure/apikey.dart';
import 'package:netflix_spoof/presentation/infopage/videoinfo.dart';

class HomeCardContainer extends StatelessWidget {
  final int index;
  final String url;
  final String containername;
  const HomeCardContainer({
    super.key,
    required this.index,
    required this.url,
    required this.containername,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Videoinfo(
                  index: index,
                  containername: containername,
                )));
      },
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage('$imageappendUrl$url'),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}

class DesignedHomeCardContainer extends StatelessWidget {
  final int index;
  const DesignedHomeCardContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Top10Bloc, Top10State>(
      builder: (context, state) {
        if (state.isError) {
          return const Text("An unexpected error occured");
        }
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Videoinfo(
                      index: index,
                      containername: 'Top 10 TV Shows in India Today',
                    )));
          },
          child: Stack(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                    height: 200,
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                              '$imageappendUrl${state.top10[index].posterPath}'),
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
              Positioned(
                top: 90,
                left: 0,
                bottom: 0,
                child: BorderedText(
                  strokeColor: Colors.white,
                  strokeWidth: 3,
                  child: Text(
                    (index + 1).toString(),
                    style: const TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
