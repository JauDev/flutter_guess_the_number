import 'package:flutter/material.dart';
import '../controllers/view_model.dart';
import '../widgets/rounded_view.dart';
import '../widgets/number_view.dart';
import 'marks_view.dart';
import 'package:provider/provider.dart';

class BackgroundView extends StatelessWidget {
  const BackgroundView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<ViewModel>();
    final game = vm.game;

    return Column(
      children: [
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RoundedView(
              icon: Icons.refresh,
              onTap: vm.restart,
            ),
            RoundedView(
              icon: Icons.list,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MarksView()),
              ),
            ),
            RoundedView(
              icon: Icons.play_arrow,
              onTap: vm.tryHit,
            ),
          ],
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NumberView(label: 'SCORE', value: game.score),
            NumberView(label: 'ROUND', value: game.round),
          ],
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
