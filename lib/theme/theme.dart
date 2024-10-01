import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  useMaterial3: false,
  scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
  primarySwatch: Colors.yellow,
  dividerColor: Colors.white24,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 31, 31, 31),
    iconTheme: IconThemeData(color: Colors.yellow),
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
        color: Colors.white60,
        fontWeight: FontWeight.w700 ,
        fontSize: 15
    ),
    headlineMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 24,
    )
  ),
);