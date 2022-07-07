import 'package:flutter/material.dart';

import 'constants.dart';

final lightTheme = ThemeData(
  primaryColor: kPrimaryColor,
  backgroundColor: kBackgroundLightColor,
  scaffoldBackgroundColor: kBackgroundLightColor,
  fontFamily: 'Varela',
  colorScheme: const ColorScheme.light(
    primary: kPrimaryColor,
    surface: kSurfaceLightColor,
    background: kBackgroundLightColor,
    secondary: kSecondaryColor,
    onBackground: kPrimaryTextLightColor,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(color: kPrimaryTextLightColor),
    displayMedium: TextStyle(color: kPrimaryTextLightColor),
    displaySmall: TextStyle(color: kPrimaryTextLightColor),
    headlineLarge: TextStyle(color: kPrimaryTextLightColor),
    headlineMedium: TextStyle(color: kPrimaryTextLightColor),
    headlineSmall: TextStyle(color: kPrimaryTextLightColor),
    titleLarge: TextStyle(color: kPrimaryTextLightColor),
    titleMedium: TextStyle(color: kPrimaryTextLightColor),
    titleSmall: TextStyle(color: kPrimaryTextLightColor),
    bodyLarge: TextStyle(color: kPrimaryTextLightColor),
    bodyMedium: TextStyle(color: kPrimaryTextLightColor),
    bodySmall: TextStyle(color: kPrimaryTextLightColor),
    labelLarge: TextStyle(
      color: kPrimaryTextLightColor,
      letterSpacing: 0.6,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: TextStyle(color: kPrimaryTextLightColor),
  ),
);

final darkThemeData = ThemeData(
  primaryColor: kPrimaryColor,
  scaffoldBackgroundColor: kBackgroundDarkColor,
  backgroundColor: kBackgroundDarkColor,
  fontFamily: 'Varela',
  colorScheme: const ColorScheme.dark(
    primary: kPrimaryColor,
    secondary: kSecondaryColor,
    background: kBackgroundDarkColor,
    surface: kSurfaceDarkColor,
    onBackground: kPrimaryTextDarkColor,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(color: kPrimaryTextDarkColor),
    displayMedium: TextStyle(color: kPrimaryTextDarkColor),
    displaySmall: TextStyle(color: kPrimaryTextDarkColor),
    headlineLarge: TextStyle(color: kPrimaryTextDarkColor),
    headlineMedium: TextStyle(color: kPrimaryTextDarkColor),
    headlineSmall: TextStyle(color: kPrimaryTextDarkColor),
    titleLarge: TextStyle(color: kPrimaryTextDarkColor),
    titleMedium: TextStyle(color: kPrimaryTextDarkColor),
    titleSmall: TextStyle(color: kPrimaryTextDarkColor),
    bodyLarge: TextStyle(color: kPrimaryTextDarkColor),
    bodyMedium: TextStyle(color: kPrimaryTextDarkColor),
    bodySmall: TextStyle(color: kPrimaryTextDarkColor),
    labelLarge: TextStyle(
      color: kPrimaryTextDarkColor,
      letterSpacing: 0.6,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: TextStyle(color: kPrimaryTextDarkColor),
  ),
);
