import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix_spoof/colors/colors.dart';
import 'package:netflix_spoof/infrastructure/apikey.dart';

import '../../../application/downloads/downloads_bloc.dart';
import '../../infopage/videoinfo.dart';

class HomeBarWidget extends StatelessWidget {
  const HomeBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    double width = double.infinity;

    return BlocListener<DownloadsBloc, DownloadsState>(listener:
        (context, state) {
      if (state.isLoading == false && state.trending.isEmpty) {
        BlocProvider.of<DownloadsBloc>(context)
            .add(const DownloadsEvent.gettrending());
      }
    }, child:
        BlocBuilder<DownloadsBloc, DownloadsState>(builder: (context, state) {
      if (state.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Stack(
            children: [
              Container(
                  width: width,
                  height: 600,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          '$imageappendUrl${state.trending[0].posterPath}'),
                      fit: BoxFit.cover,
                    ),
                  )),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Customtextbutton(
                        icon: Icons.add,
                        iconname: 'My List',
                      ),
                      _playButton(context),
                      const Customtextbutton(
                          icon: Icons.info_outlined, iconname: 'Info')
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }
    }));
  }

  TextButton _playButton(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(const Size.fromHeight(0)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          backgroundColor: WidgetStateProperty.all(whitebackground)),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Videoinfo(
            index: 0,
            containername: 'Trending Now',
          );
        }));
      },
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: Colors.black,
      ),
      label: const Text(
        'Play',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }
}

class Customtextbutton extends StatelessWidget {
  final IconData icon;
  final String iconname;
  const Customtextbutton(
      {super.key, required this.icon, required this.iconname});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Text(
            iconname,
            style: const TextStyle(color: textcolor),
          ),
        )
      ],
    );
  }
}
