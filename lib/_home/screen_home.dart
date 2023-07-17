import 'package:flutter/material.dart';
import 'package:flutter_movie_ui_practice/_home/section_foryou_card.dart';
import 'package:flutter_movie_ui_practice/_home/section_header.dart';
import 'package:flutter_movie_ui_practice/_home/section_search_bar.dart';
import 'package:flutter_movie_ui_practice/data/d_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  MySearchBar(),
                  ForYouCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
