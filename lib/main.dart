import 'package:flutter/material.dart';
import 'views/content_view.dart';
import 'themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess the Number',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        textTheme: const TextTheme(
          displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, letterSpacing: -1),
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      home: const Scaffold(
        body: Center(
          child: ContentView(),
        ),
      ),
    );
  }
}
