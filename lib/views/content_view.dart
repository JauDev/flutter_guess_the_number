import 'package:flutter/material.dart';
import '../controllers/view_model.dart';
import '../themes/app_colors.dart';
import '../widgets/slider_widget.dart';
import '../models/game.dart';
import 'package:provider/provider.dart';

// Aquesta classe representa la vista principal del joc, on es mostra el número a endevinar i el control lliscant.
class ContentView extends StatelessWidget {
  const ContentView({super.key}); // Constructor de la classe ContentView

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<ViewModel>(); // Obtenim el ViewModel

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Emogi de la diana
        Text('🎯', style: Theme.of(context).textTheme.displaySmall),
        const SizedBox(height: 8),
        // Text que mostra el número a endevinar
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
        // Text que mostra el número seleccionat pel jugador
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
