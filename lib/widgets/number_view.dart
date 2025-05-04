import 'package:flutter/material.dart';
import '../themes/app_colors.dart';

class NumberView extends StatelessWidget {
  final String label;
  final int value;
  const NumberView({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label),
        Container(
          width: 68,
          height: 56,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(.15),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text('$value',
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
