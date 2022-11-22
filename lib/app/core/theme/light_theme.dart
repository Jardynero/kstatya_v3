import 'package:flutter/material.dart';
import 'package:kstatya/app/core/theme/theme_constants.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: mainFontFamily,
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.black,
      fontSize: 26,
      fontWeight: FontWeight.w700,
      height: 1.13,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 21,
      fontWeight: FontWeight.w700,
      height: 1.04,
      fontFamily: mainFontFamily,
    ),
  ),
);
