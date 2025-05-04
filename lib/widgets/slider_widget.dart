import 'package:flutter/material.dart';

// Aquesta classe representa un widget de control deslizante que permet a l'usuari seleccionar un valor dins d'un rang especificat.
class SliderWidget extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;
  final double min;
  final double max;
  const SliderWidget({
    super.key,
    required this.value,
    required this.onChanged,
    required this.min,
    required this.max,
  });

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      onChanged: onChanged,
      min: min,
      max: max,
    );
  }
}
