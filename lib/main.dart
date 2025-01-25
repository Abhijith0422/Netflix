import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_spoof/application/downloads/downloads_bloc.dart';
import 'package:netflix_spoof/application/everyonewatching/everyonewatching_bloc.dart';
import 'package:netflix_spoof/application/home/home_bloc.dart';

import 'package:netflix_spoof/application/newandhot/newandhot_bloc.dart';
import 'package:netflix_spoof/application/search/search_bloc.dart';
import 'package:netflix_spoof/colors/colors.dart';
import 'package:netflix_spoof/domain/core/di/injectable.dart';

import 'package:netflix_spoof/presentation/main%20page/widgets/screen_mainpage.dart';

import 'application/home/topshows/toptvshows_bloc.dart';
import 'application/top10/top10_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getit<DownloadsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SearchBloc>(),
        ),
        BlocProvider(create: (context) => getit<NewandhotBloc>()),
        BlocProvider(create: (context) => getit<EveryonewatchingBloc>()),
        BlocProvider(create: (context) => getit<HomeBloc>()),
        BlocProvider(create: (context) => getit<ToptvshowsBloc>()),
        BlocProvider(create: (context) => getit<Top10Bloc>())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Netflix Spoof',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: backgroundcolor),
          scaffoldBackgroundColor: backgroundcolor,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: textcolor),
            bodyMedium: TextStyle(color: textcolor),
            bodySmall: TextStyle(color: textcolor),
          ),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.black,
              secondary: Colors.white,
              primary: Colors.grey),
          useMaterial3: true,
        ),
        home: MainPage(),
      ),
    );
  }
}
