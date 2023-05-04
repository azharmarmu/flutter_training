import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/pages/list_of_items/list_of_items_page.dart';

import 'presentation/pages/home/home_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactsPage(),
    );
  }
}
