import 'package:flutter/material.dart';
import '../models/game.dart';
import '../models/mark.dart';

class ViewModel extends ChangeNotifier {
  final Game _game = Game();
  final List<Mark> _marks = [];

  Game  get game  => _game;
  List<Mark> get marks => List.unmodifiable(_marks);

  double _sliderValue = 50;
  double get sliderValue => _sliderValue;

  void onSliderChanged(double v) {
    _sliderValue = v;
    notifyListeners();
  }

  void tryHit() {
    _game.hit(_sliderValue);
    _saveMark(_game.lastPoints);
    _sliderValue = 50;
    notifyListeners();
  }

  void restart() {
    _game.restart();
    _sliderValue = 50;
    notifyListeners();
  }

  void _saveMark(int pts) {
    _marks.add(Mark(DateTime.now(), pts));
    _marks.sort((a, b) => b.points.compareTo(a.points));
    if (_marks.length > 5) _marks.removeLast();
  }
}
