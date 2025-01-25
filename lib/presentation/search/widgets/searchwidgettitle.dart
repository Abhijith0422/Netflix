import 'package:flutter/material.dart';
import 'package:netflix_spoof/colors/colors.dart';

class SearchPageTitle extends StatelessWidget {
  final String title;
  const SearchPageTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: textcolor, fontWeight: FontWeight.bold, fontSize: 22),
    );
  }
}
