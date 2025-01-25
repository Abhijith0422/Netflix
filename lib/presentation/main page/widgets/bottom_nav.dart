import 'package:flutter/material.dart';

ValueNotifier<int> indexNotifier = ValueNotifier<int>(0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              elevation: 0,
              currentIndex: newIndex,
              onTap: (index) {
                indexNotifier.value = index;
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.whatshot), label: 'New & Hot'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download), label: 'Downloads'),
              ]);
        });
  }
}
