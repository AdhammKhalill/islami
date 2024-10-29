import 'package:flutter/material.dart';

class myTheme {
  static final Color primaryColor = Color(0xFFB7935F);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: TextTheme(
        headlineLarge: TextStyle(fontSize: 28, color: Colors.black),
        headlineMedium: TextStyle(fontSize: 24, color: Colors.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: Colors.black),
      unselectedIconTheme: IconThemeData(color: Colors.white),
      selectedLabelStyle: TextStyle(color: Colors.black),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
  );
}
