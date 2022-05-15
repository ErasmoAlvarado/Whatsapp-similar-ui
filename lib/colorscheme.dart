import 'package:flutter/material.dart';

class MyTheme {
  static final BlackTheme = ThemeData(
      iconTheme: const IconThemeData(color: Color.fromRGBO(18, 140, 126, 1)),
      colorScheme: const ColorScheme.dark(),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey[800],
          titleTextStyle: const TextStyle(color: Colors.white24)),
      tabBarTheme: const TabBarTheme(
          unselectedLabelColor: Colors.white24,
          labelColor: Color.fromRGBO(18, 140, 126, 1)),
      scaffoldBackgroundColor: Colors.blueGrey[900],
      backgroundColor: Colors.blueGrey[900]);

  static final WhiteTheme = ThemeData(
      iconTheme: const IconThemeData(color: Color.fromRGBO(18, 140, 126, 1)),
      appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(18, 140, 126, 1),
          titleTextStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
      tabBarTheme: const TabBarTheme(
          unselectedLabelColor: Colors.white54,
          labelColor: Color.fromARGB(255, 255, 255, 255)),
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255));
}
