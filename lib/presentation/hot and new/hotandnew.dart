import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_spoof/application/everyonewatching/everyonewatching_bloc.dart';
import 'package:netflix_spoof/application/newandhot/newandhot_bloc.dart';

import 'package:netflix_spoof/colors/colors.dart';
import 'package:netflix_spoof/presentation/hot%20and%20new/widgets/comingsoon/comingsoon.dart';
import 'package:netflix_spoof/presentation/hot%20and%20new/widgets/everyonewatching/everyonewatching.dart';
import 'package:netflix_spoof/presentation/hot%20and%20new/widgets/top10/top10.dart';

import 'package:netflix_spoof/presentation/widgets/appbar_widget.dart';

class HotandNew extends StatelessWidget {
  const HotandNew({super.key});
  final List<Tab> tabbarItems = const [
    Tab(text: '  🍿 Coming Soon  '),
    Tab(text: "👀 Everyone's Watching"),
    Tab(
        icon: Image(
      image: AssetImage('assets/top10.png'),
      width: 24,
      height: 24,
    ))
  ];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewandhotBloc>(context)
          .add(const NewandhotEvent.getupcoming());
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<EveryonewatchingBloc>(context)
          .add(const EveryonewatchingEvent.getpopular());
    });

    return DefaultTabController(
      length: tabbarItems.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBarWid(
            title: 'New & Hot',
            bottom: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                tabs: tabbarItems,
                labelColor: Colors.black,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: whitebackground),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelColor: textcolor,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            buildComingSoon(context),
            _buildEveryoneWatching(context),
            _buildTop10(context),
          ],
        ),
      ),
    );
  }

  Widget buildComingSoon(BuildContext context) {
    return BlocBuilder<NewandhotBloc, NewandhotState>(
      builder: (context, state) {
        return ListView.builder(
            itemCount: state.upcoming.length,
            itemBuilder: (context, index) {
              return ComingsoonPage(index: index);
            });
      },
    );
  }

  Widget _buildEveryoneWatching(BuildContext context) {
    return BlocBuilder<EveryonewatchingBloc, EveryonewatchingState>(
      builder: (context, state) {
        return ListView.builder(
            itemCount: state.popular.length,
            itemBuilder: (context, index) {
              return EveryOneWatching(index: index);
            });
      },
    );
  }

  _buildTop10(BuildContext context) {
    return const Top10Widget();
  }
}
