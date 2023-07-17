import 'package:flutter/material.dart';
import 'package:flutter_movie_ui_practice/data/d_colors.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hi Sanghun!',
            style: TextStyle(
              color: kColor1,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.account_circle_rounded, color: kColor1, size: 40),
        ],
      ),
    );
  }
}
