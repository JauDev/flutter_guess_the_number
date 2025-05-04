import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/view_model.dart';
import '../widgets/rounded_view.dart';
import '../widgets/number_view.dart';
import 'marks_view.dart';

// Aquesta classe representa la vista de fons del joc, que conté els botons i la puntuació
class BackgroundView extends StatelessWidget {
  const BackgroundView({super.key}); // Constructor de la classe BackgroundView

  @override
  Widget build(BuildContext context) {
    final vm   = context.watch<ViewModel>(); // Obtenim el ViewModel
    final game = vm.game; // Obtenim el joc del ViewModel

    final double topPadding = MediaQuery.of(context).padding.top; // Afegeix un padding superior igual al de la barra d'estat del dispositiu

    return Stack(
      children: [
        // Botó per reiniciar el joc
        Positioned(
          top: topPadding + 12,
          left: 12,
          child: RoundedView(
            icon: Icons.refresh,
            onTap: vm.restart,
          ),
        ),

        // Botó per mostrar la llista de marques
        Positioned(
          top: topPadding + 12,
          right: 12,
          child: RoundedView(
            icon: Icons.list,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const MarksView()),
            ),
          ),
        ),

        // Botó per mostrar la puntuació
        Positioned(
          bottom: 24,
          left: 16,
          child: NumberView(label: 'SCORE', value: game.score),
        ),

        // Botó per mostrar la ronda actual
        Positioned(
          bottom: 24,
          right: 16,
          child: NumberView(label: 'ROUND', value: game.round),
        ),
      ],
    );
  }
}
