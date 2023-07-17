import 'package:flutter/material.dart';
import 'package:flutter_movie_ui_practice/data/d_colors.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: kSearchBarColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: kSearchBarShadowColor,
              offset: Offset(2, 3),
              blurRadius: 20,
            ),
            BoxShadow(),
          ],
        ),
        child: const Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.search_rounded,
              color: kColor3,
            ),
          ],
        ),
      ),
    );
  }
}
