import 'package:flutter/material.dart';
import '../widgets/slider_widget.dart';
import '../models/game.dart';
import '../themes/app_colors.dart';

class ContentView extends StatefulWidget {
  const ContentView({super.key});

  @override
  State<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  double _sliderValue = 50.0;
  Game _game = Game();

  void _showAlert(BuildContext context) {
    _game.calculatePoints(_sliderValue);
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text("Result"),
        content: Text("Your score: ${_game.points}"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                _game.reset();
              });
            },
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("🎯🎯🎯🎯",
            style: Theme.of(context).textTheme.titleLarge),
        Text("${_game.targetValue}",
            style: Theme.of(context).textTheme.titleLarge),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SliderWidget(
            value: _sliderValue,
            onChanged: (newValue) {
              setState(() {
                _sliderValue = newValue;
              });
            },
            min: Game.MIN_VALUE.toDouble(),
            max: Game.MAX_VALUE.toDouble(),
          ),
        ),
        ElevatedButton(
          onPressed: () => _showAlert(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(21),
            ),
          ),
          child: Text("TRY", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
