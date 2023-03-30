import 'package:flutter/material.dart';

import './colours.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme(
    onError: kWhite,
    primary: kBlue,
    error: kRed,
    surface: kBlue,
    onPrimary: kWhite,
    background: kWhite,
    secondary: kBlue,
    onSecondary: kWhite,
    onSurface: kBlack,
    onBackground: kBlack,
    brightness: Brightness.light,
  ),
  iconTheme: const IconThemeData(
    color: kBlue,
    size: 24,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontFamily: "Poppins",
      color: kWhite,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      fontFamily: "Poppins",
      color: kBlack,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontFamily: "Poppins",
      color: kBlack,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontFamily: "Poppins",
      color: kBlack,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      fontFamily: "Poppins",
      color: kBlack,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Poppins",
      color: kBlack,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      fontFamily: "Poppins",
      color: kBlack,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),
);
