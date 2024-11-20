import 'package:chodotot_getx/Config/color.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: lightBgColor,
    filled: true,
    enabledBorder: InputBorder.none,
    prefixIconColor: lightLableColor,
    labelStyle: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      color: lightFontColor,
      fontWeight: FontWeight.w500,
    ),
    hintStyle: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      color: lightFontColor,
      fontWeight: FontWeight.w500,
    ),
  ),
  colorScheme: const ColorScheme.light(
    brightness: Brightness.light,
    surface: lightBgColor,
    onSurface: lightFontColor,
    primaryContainer: lightDivColor,
    onPrimaryContainer: lightFontColor,
    onSecondaryContainer: lightLableColor,
    primary: lightPrimaryColor,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 24,
      color: lightFontColor,
      fontWeight: FontWeight.w700,
    ), // TextStyle
    headlineMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      color: lightFontColor,
      fontWeight: FontWeight.w600,
    ), // TextStyle
    headlineSmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      color: lightFontColor,
      fontWeight: FontWeight.w800,
    ),
    bodyLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      color: lightFontColor,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      color: lightFontColor,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 13,
      color: lightFontColor,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 13,
      color: lightFontColor,
      fontWeight: FontWeight.w300,
    ),
  ),
);
