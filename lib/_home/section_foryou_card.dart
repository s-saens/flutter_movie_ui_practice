import 'package:flutter/material.dart';
import 'package:flutter_movie_ui_practice/data/d_movies.dart';

class ForYouCard extends StatefulWidget {
  const ForYouCard({super.key});

  @override
  State<ForYouCard> createState() => _ForYouCardState();
}

class _ForYouCardState extends State<ForYouCard> {
  PageController pageController =
      PageController(initialPage: 1, viewportFraction: 0.8);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'For You',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 20,
          width: 1000,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.width * 1,
            child: PageView.builder(
              padEnds: false,
              itemCount: allMovies.length,
              itemBuilder: (context, index) =>
                  ForYouCardItem(movie: allMovies.elementAt(index)),
              controller: pageController,
              onPageChanged: (value) => setState(() => currentPage = value),
              clipBehavior: Clip.none,
            ),
          ),
        ),
      ],
    );
  }
}

class ForYouCardItem extends StatelessWidget {
  final MovieModel movie;
  const ForYouCardItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("assets/movies/${movie.movieKey}.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
