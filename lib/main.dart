import 'package:flutter/material.dart';
import 'package:flutter_movie_ui_practice/_home/screen_home.dart';
import 'package:flutter_movie_ui_practice/_home/theme/theme_dark.dart';
import 'package:flutter_movie_ui_practice/_home/theme/theme_light.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      title: 'Movie UI Practice',
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
