import 'package:flutter/material.dart';
import '../models/game.dart';
import '../models/mark.dart';

// Aquesta classe és el ViewModel que gestiona l'estat del joc i les marques (puntuacions).
class ViewModel extends ChangeNotifier {
  final Game _game = Game(); // Instància del joc
  final List<Mark> _marks = []; // Llista de marques (puntuacions)

  Game  get game  => _game; // Instància del joc
  List<Mark> get marks => List.unmodifiable(_marks); // Llista de marques (puntuacions)

  double _sliderValue = 50; // Valor del slider (0-100)
  double get sliderValue => _sliderValue; // Valor del slider (0-100)

  // Actualitza el valor del slider quan canvia
  void onSliderChanged(double v) {
    _sliderValue = v;
    notifyListeners();
  }

  // Actualitza el valor del slider i la puntuació
  void tryHit() {
    _game.hit(_sliderValue);
    _saveMark(_game.lastPoints);
    _sliderValue = 50;
    notifyListeners();
  }

  // Reinicia el joc i el valor del slider
  void restart() {
    _game.restart();
    _sliderValue = 50;
    notifyListeners();
  }

  // Guarda la puntuació a la llista de marques
  void _saveMark(int pts) {
    _marks.add(Mark(DateTime.now(), pts));
    _marks.sort((a, b) => b.points.compareTo(a.points));
    if (_marks.length > 5) _marks.removeLast();
  }
}
