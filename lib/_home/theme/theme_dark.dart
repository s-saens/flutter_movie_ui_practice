import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: const Color.fromARGB(255, 0, 0, 0),
    primary: Colors.grey[900]!,
    secondary: Colors.grey[900]!,
    tertiary: Colors.grey[900]!,
  ),
);
