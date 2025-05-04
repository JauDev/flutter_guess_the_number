import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/view_model.dart';
import 'themes/app_colors.dart';
import 'views/background_view.dart';
import 'views/content_view.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Guess the Number',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          textTheme: const TextTheme(
            displaySmall: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: -1,
            ),
            titleLarge: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: const Scaffold(
          body: Stack(
            children: [
              BackgroundView(),
              Center(child: ContentView()),
            ],
          ),
        ),
      ),
    );
  }
}
