import 'package:flutter/material.dart';
import '../models/game.dart';

class ViewModel extends ChangeNotifier {
  final Game _game = Game();

  Game get game => _game;

  void onSliderChanged(double v) {
    _sliderValue = v;
    notifyListeners();
  }

  double _sliderValue = 50;
  double get sliderValue => _sliderValue;

  void tryHit() {
    _game.hit(_sliderValue);
    _sliderValue = 50;
    notifyListeners();
  }

  void restart() {
    _game.restart();
    _sliderValue = 50;
    notifyListeners();
  }
}
