import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _lightPrimaryColor = Colors.white;
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static const Color _lightOnPrimaryColor = Color(0xff1d213f);
  static const Color _lightTextColorPrimary = Colors.white;
  static const Color _appbarColorLight = Color(0xff222540);
  static const Color _hintTextColorLight = Color(0xff828282);

  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static final Color _darkOnPrimaryColor = Colors.blueGrey.shade300;
  static const Color _darkTextColorPrimary = Colors.white;
  static final Color _appbarColorDark = Colors.blueGrey.shade800;

  static const Color _iconColor = Colors.white;

  static const Color _accentColor = Color.fromRGBO(74, 24, 154, 1);

  // *****************
  // Text Style - light
  // *****************
  static const TextStyle _lightHeadingText = TextStyle(
    letterSpacing: 1,
      color: _lightTextColorPrimary,
      fontFamily: "Lato",
      fontSize: 20,
      fontWeight: FontWeight.bold);

      static const TextStyle _hintText = TextStyle(
    letterSpacing: 1,
      color: _hintTextColorLight,
      fontFamily: "Lato",
      fontSize: 20,
      fontWeight: FontWeight.bold);

      static const TextStyle _hintTextsmall = TextStyle(
    letterSpacing: 1,
      color: _hintTextColorLight,
      fontFamily: "Lato",
      fontSize: 15,
      fontWeight: FontWeight.bold);

  static const TextStyle _lightBodyText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Lato",
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontSize: 16);
  static const TextStyle _headlineMedium = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Lato",
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontSize: 26);

  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightHeadingText,
    bodyLarge: _lightBodyText,
    displaySmall: _lightBodyText,
    labelMedium: _hintText,
    labelSmall: _hintTextsmall,
    headlineMedium: _headlineMedium
  );

  // *****************
  // Text Style - dark
  // *****************
  static final TextStyle _darkThemeHeadingTextStyle =
      _lightHeadingText.copyWith(color: _darkTextColorPrimary);

  static final TextStyle _darkThemeBodyeTextStyle =
      _lightBodyText.copyWith(color: _darkTextColorPrimary);

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkThemeHeadingTextStyle,
    bodyLarge: _darkThemeBodyeTextStyle,
  );

// *****************
// Theme light/dark
// *****************

  static final ThemeData lightTheme = ThemeData(
    
   // fontFamily: 'Lato',
    textTheme: _lightTextTheme,
    useMaterial3: true,
    scaffoldBackgroundColor: _lightOnPrimaryColor,
    appBarTheme: const AppBarTheme(
        color: _appbarColorLight, iconTheme: IconThemeData(color: _iconColor)),
    colorScheme: ColorScheme.light(
        primary: _lightOnPrimaryColor,
        onPrimary: _lightOnPrimaryColor,
        secondary: _accentColor,
        primaryContainer: _lightPrimaryVariantColor),
    
  );

  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: _darkPrimaryColor,
      appBarTheme: AppBarTheme(
          color: _appbarColorDark,
          iconTheme: const IconThemeData(color: _iconColor)),
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        secondary: _accentColor,
        onPrimary: _darkOnPrimaryColor,
        primaryContainer: _darkPrimaryVariantColor,
      ),
      textTheme: _darkTextTheme,
      bottomAppBarTheme: BottomAppBarTheme(color: _appbarColorDark));
}