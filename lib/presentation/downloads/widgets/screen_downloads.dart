import 'package:flutter/material.dart';
import 'package:netflix_spoof/presentation/downloads/widgets/widgetlist.dart';

import 'package:netflix_spoof/presentation/widgets/appbar_widget.dart';

class Downloads extends StatelessWidget {
  const Downloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(52),
          child: AppBarWid(
            title: 'Downloads',
          ),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
            itemBuilder: (ctx, index) {
              return widgetlist[index];
            },
            separatorBuilder: (ctx, index) {
              return const SizedBox(height: 20);
            },
            itemCount: widgetlist.length));
  }
}
