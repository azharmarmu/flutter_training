import 'package:flutter/material.dart';
import 'package:flutter_training/config/theme.dart';

import 'config/app_routes.dart';
import 'pages/home_page.dart';
import 'pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: '/',
      routes: {
        AppRoutes.home: (ctx) => HomePage(),
        AppRoutes.settings: (ctx) => SettingsPage(),
      },
      //root level page/widget
    );
  }
}
