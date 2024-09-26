import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
  dividerColor: Colors.white24,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 31, 31, 31),
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 20
    ),
  ),

  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20
    ),
    labelSmall: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700 ,
        fontSize: 15
    ),
  ),
);