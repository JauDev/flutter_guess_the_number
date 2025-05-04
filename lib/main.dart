import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/view_model.dart';
import 'themes/app_colors.dart';
import 'views/background_view.dart';
import 'views/content_view.dart';

void main() => runApp(const MainApp());

// Funció principal que inicia l'aplicació
class MainApp extends StatelessWidget {
  const MainApp({super.key}); // Constructor de la classe MainApp

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Guess the Number', // Títol de l'aplicació
        theme: ThemeData( // Tema de l'aplicació
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
              BackgroundView(), // Vista de fons que conté els botons i la puntuació
              Center(child: ContentView()),
            ],
          ),
        ),
      ),
    );
  }
}
