import 'dart:math';

// Aquesta classe representa el joc i conté la lògica del joc, incloent la generació de números aleatoris i el càlcul de puntuacions.
class Game {
  static const int minValue = 0; // Mínim valor del slider
  static const int maxValue = 100; // Màxim valor del slider

  final _rng = Random(); // Generador de números aleatoris
  int _target = 0; // Valor objectiu del slider
  int _lastPoints = 0; // Última puntuació obtinguda
  int _score = 0; // Puntuació total del jugador
  int _round = 1; // Número de ronda actual

  int get target     => _target; // Valor objectiu del slider
  int get lastPoints => _lastPoints; // Última puntuació obtinguda
  int get score      => _score; // Puntuació total del jugador
  int get round      => _round; // Número de ronda actual

  Game() { _nextTarget(); } // Constructor que inicialitza el valor objectiu

  // Actualitza el valor objectiu i calcula la puntuació
  void hit(double slider) {
    final diff = (_target - slider.round()).abs();
    _lastPoints = maxValue - diff;
    _score += _lastPoints;
    _round += 1;
    _nextTarget();
  }

  // Reinicia el joc i torna a establir el valor objectiu
  void restart() {
    _score = 0;
    _round = 1;
    _lastPoints = 0;
    _nextTarget();
  }

  // Genera un nou valor objectiu aleatori
  void _nextTarget() {
    _target = _rng.nextInt(maxValue + 1 - minValue) + minValue;
  }
}
