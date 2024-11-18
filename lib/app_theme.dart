
import 'package:flutter/material.dart';

class AppTheme {
    static const Color primary = Color(0xFF39A552);
  static const Color white = Color(0xFFFFFFFF);
  static const Color navy = Color(0xFF4F5A69);
  static const Color black = Color(0xFF303030);
    static const Color red = Color.fromARGB(255, 158, 37, 37);
  static ThemeData lighttheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: white,
    appBarTheme: AppBarTheme(
      color: primary,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 22,
      fontWeight: FontWeight.w400,
      color: white

      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32)
      )

    ),
    textTheme: TextTheme(titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: white

    ))
  );




}