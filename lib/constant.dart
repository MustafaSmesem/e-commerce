import 'dart:ui';

import 'package:flutter/material.dart';


MaterialColor generateMaterialColorFromColor(Color color) {
  return MaterialColor(color.value, {
    50: Color.fromRGBO(color.red, color.green, color.blue, 0.1),
    100: Color.fromRGBO(color.red, color.green, color.blue, 0.2),
    200: Color.fromRGBO(color.red, color.green, color.blue, 0.3),
    300: Color.fromRGBO(color.red, color.green, color.blue, 0.4),
    400: Color.fromRGBO(color.red, color.green, color.blue, 0.5),
    500: Color.fromRGBO(color.red, color.green, color.blue, 0.6),
    600: Color.fromRGBO(color.red, color.green, color.blue, 0.7),
    700: Color.fromRGBO(color.red, color.green, color.blue, 0.8),
    800: Color.fromRGBO(color.red, color.green, color.blue, 0.9),
    900: Color.fromRGBO(color.red, color.green, color.blue, 1.0),
  });
}

const primaryColor = Color(0xFFF26B7B);
const swatch = <int, Color>{
  50: Color(0xFFF8DDE1),
  100: Color(0xFFFCD0D6),
  200: Color(0xFFEFB4BD),
  300: Color(0xFFEE9EAA),
  400: Color(0xFFE17887),
  500: Color(0xFFDE6173),
  600: Color(0xFFDC566A),
  700: Color(0xFFD53E54),
  800: Color(0xFFEE3450),
  900: Color(0xFFA92539),
};

MaterialColor primaryColorSwatch = generateMaterialColorFromColor(primaryColor);
// light theme colors
const secondaryLightThemeColor = Color(0xFFF26B7B);
const textLightThemeColor = Color(0xFFF26B7B);
const bodyTextLightThemeColor = Color(0xFFF26B7B);

// dark theme colors
const secondaryDarkThemeColor = Color(0xFFF26B7B);
const textDarkThemeColor = Color(0xFFF26B7B);
const bodyTextDarkThemeColor = Color(0xFFF26B7B);


// background light theme colors
const lightOrangeColor = Color(0xffffb56b);
const darkOrangeColor = Color(0xfff39060);
const pinkColor = Color(0xffac255e);

// background dark theme colors

// const numbers
const defaultSpacerHeight = 16.0;
const defaultBorderRadius = 4.0;
const defaultPadding = 16.0;
