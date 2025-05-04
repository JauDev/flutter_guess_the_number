import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../widgets/rounded_view.dart';
import '../widgets/number_view.dart';
import '../controllers/view_model.dart';
import 'package:provider/provider.dart';
import 'marks_view.dart';

class BackgroundView extends StatelessWidget {
  const BackgroundView({super.key});

  @override
  Widget build(BuildContext context) {
    final game = context.watch<ViewModel>().game;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            RoundedView(icon: Icons.refresh),
            RoundedView(icon: Icons.list),
            RoundedView(icon: Icons.play_arrow),
          ],
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NumberView(label: 'SCORE', value: game.score),
            NumberView(label: 'ROUND', value: game.round),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MarksView()),
              ),
              child: const RoundedView(icon: Icons.list),
            ),
          ],
        ),
      ],
    );
  }
}
