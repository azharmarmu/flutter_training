import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
      accentColor: Colors.amber,
      primaryColor: Colors.white,
      backgroundColor: Colors.white24,
      appBarTheme: AppBarTheme(
        elevation: 12,
        color: Colors.red,
      ),
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(Colors.blue),
      ),
    );
ThemeData get darkTheme => ThemeData(
      accentColor: Colors.amber,
      primaryColor: Colors.black,
      backgroundColor: Colors.black38,
      appBarTheme: AppBarTheme(
        elevation: 12,
        color: Colors.blue,
      ),
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(Colors.red),
      ),
    );
