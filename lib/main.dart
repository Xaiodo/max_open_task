import 'package:flutter/material.dart';
import 'package:max_open_task/src/pages/name_screen/view/name_screen_page.dart';
import 'package:max_open_task/src/values/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const NameScreenPage(),
    );
  }
}
