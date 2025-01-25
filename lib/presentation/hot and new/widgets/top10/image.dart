import 'package:flutter/material.dart';
import 'package:netflix_spoof/infrastructure/apikey.dart';

class Top10Image extends StatelessWidget {
  final String image;
  const Top10Image({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: 200,
            child: Image(
              image: NetworkImage(
                "$imageappendUrl$image",
              ),
              fit: BoxFit.cover,
            )),
        const Align(
          alignment: Alignment.topRight,
          child: Image(
            image: AssetImage('assets/top10.png'),
            width: 20,
            height: 30,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          right: 8,
          child: Container(
            height: 35,
            decoration: const BoxDecoration(
              color: Color.fromARGB(210, 0, 0, 0),
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_off_outlined,
                  color: Colors.white,
                  size: 20,
                )),
          ),
        ),
      ],
    );
  }
}
