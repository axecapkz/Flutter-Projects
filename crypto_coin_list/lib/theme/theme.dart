 import 'package:flutter/material.dart';

final darkTheme = ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
        colorScheme: ColorScheme.fromSeed(seedColor:  const Color.fromARGB(255,31,31,31)),
        dividerColor: Colors.cyan,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor:  Color.fromARGB(255,31,31,31),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w700)),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        useMaterial3: true,
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(color: Colors.white.withOpacity(0.6),
           fontWeight: FontWeight.w700,
           fontSize: 14,
           ),
        )
      );