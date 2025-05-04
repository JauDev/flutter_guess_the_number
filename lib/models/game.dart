import 'dart:math';

class Game {
  static const int minValue = 0;
  static const int maxValue = 100;

  final _rng = Random();
  int _target = 0;
  int _lastPoints = 0;
  int _score = 0;
  int _round = 1;

  int get target     => _target;
  int get lastPoints => _lastPoints;
  int get score      => _score;
  int get round      => _round;

  Game() { _nextTarget(); }

  void hit(double slider) {
    final diff = (_target - slider.round()).abs();
    _lastPoints = maxValue - diff;
    _score += _lastPoints;
    _round += 1;
    _nextTarget();
  }

  void restart() {
    _score = 0;
    _round = 1;
    _lastPoints = 0;
    _nextTarget();
  }

  void _nextTarget() {
    _target = _rng.nextInt(maxValue + 1 - minValue) + minValue;
  }
}
