import 'package:flutter/material.dart';

// Define a HexColor class for convenience
class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor'; // Add alpha value if missing
    }
    return int.parse(hexColor, radix: 16);
  }
}

class ThemeClass {
  static Color lightPrimaryColor = Color(0xffF1AE17);
  static Color darkPrimaryColor = Color(0xffF1AE17);
  static Color secondaryColor = Color(0xff272B2F);
  static Color appwhiteColor= Color(0xffffffff);

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor ,
    colorScheme: const ColorScheme.light().copyWith(
      primary: lightPrimaryColor,
      secondary: secondaryColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    floatingActionButtonTheme:
    const FloatingActionButtonThemeData(backgroundColor: Colors.white),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: darkPrimaryColor,
    ),
  );
}
