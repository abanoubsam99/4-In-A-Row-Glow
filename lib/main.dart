import 'package:flutter/material.dart';
import 'package:game_4_in_row/HomeScreen.dart';
import 'package:game_4_in_row/cpu_level_page.dart';
import 'package:game_4_in_row/match_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter fiar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      onGenerateRoute: (settings) {
        final args = settings.arguments as Map<String, dynamic>;
        if (settings.name == '/match') {
          return MaterialPageRoute(
            builder: (context) => MatchPage(
              mode: args['mode'],
              cpu: args['cpu'],
              cpu2: args['cpu2'],
            ),
          );
        } else if (settings.name == '/cpu-level') {
          return MaterialPageRoute(
            builder: (context) => CpuLevelPage(),
          );
        }

        return null;
      },
    );
  }
}
