import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/view_model.dart';
import '../widgets/rounded_view.dart';
import '../widgets/number_view.dart';
import 'marks_view.dart';

class BackgroundView extends StatelessWidget {
  const BackgroundView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm   = context.watch<ViewModel>();
    final game = vm.game;

    final double topPadding = MediaQuery.of(context).padding.top;

    return Stack(
      children: [
        Positioned(
          top: topPadding + 12,
          left: 12,
          child: RoundedView(
            icon: Icons.refresh,
            onTap: vm.restart,
          ),
        ),

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

        Positioned(
          bottom: 24,
          left: 16,
          child: NumberView(label: 'SCORE', value: game.score),
        ),

        Positioned(
          bottom: 24,
          right: 16,
          child: NumberView(label: 'ROUND', value: game.round),
        ),
      ],
    );
  }
}
