import 'package:flutter/material.dart';

import 'package:netflix_spoof/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix_spoof/presentation/home/homepage.dart';
import 'package:netflix_spoof/presentation/hot%20and%20new/hotandnew.dart';
import 'package:netflix_spoof/presentation/main%20page/widgets/bottom_nav.dart';
import 'package:netflix_spoof/presentation/search/search.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final _pages = [
    HomePage(),
    const HotandNew(),
    const Search(),
    const Downloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
