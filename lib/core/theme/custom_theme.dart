import 'package:flutter/material.dart';

ThemeData buildTheme() {
  final base = ThemeData.light();
  return base.copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
    textTheme: _buildTextTheme(base.textTheme),
    primaryColor: Colors.pink,
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    headline1: base.headline1?.copyWith(
      fontWeight: FontWeight.bold,
    ),
  ).apply(
    fontFamily: 'Rubik',
  );
}
