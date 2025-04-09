import 'package:flutter/material.dart';
import 'app_colors.dart';

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
    return Row(
      children: [
        Text(min.toInt().toString()),
        Expanded(
          child: Slider(
            value: value,
            onChanged: onChanged,
            min: min,
            max: max,
            activeColor: AppColors.primaryColor,
          ),
        ),
        Text(max.toInt().toString()),
      ],
    );
  }
}
