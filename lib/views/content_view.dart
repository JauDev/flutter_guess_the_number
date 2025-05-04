import 'package:flutter/material.dart';
import '../controllers/view_model.dart';
import '../themes/app_colors.dart';
import '../widgets/slider_widget.dart';
import '../models/game.dart';
import 'package:provider/provider.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<ViewModel>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('🎯', style: Theme.of(context).textTheme.displaySmall),
        const SizedBox(height: 8),
        Text('${vm.game.target}',
            style: Theme.of(context).textTheme.titleLarge),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: SliderWidget(
            value: vm.sliderValue,
            onChanged: vm.onSliderChanged,
            min: Game.minValue.toDouble(),
            max: Game.maxValue.toDouble(),
          ),
        ),
        ElevatedButton(
          onPressed: vm.tryHit,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
          ),
          child:
              const Text('TRY', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
