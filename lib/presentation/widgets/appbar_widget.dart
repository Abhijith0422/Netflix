import 'package:flutter/material.dart';
import 'package:netflix_spoof/colors/colors.dart';

class AppBarWid extends StatelessWidget {
  const AppBarWid({super.key, required this.title, this.bottom});
  final Widget? bottom;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0, 5, 8.0),
                child: Icon(
                  size: 28,
                  Icons.cast,
                  color: textcolor,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 8.0, 8.0),
                child: Icon(
                  size: 28,
                  Icons.account_box,
                  color: textcolor,
                ),
              ),
            ],
          ),
        ),
        if (bottom != null) bottom!,
      ],
    );
  }
}
