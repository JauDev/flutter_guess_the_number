import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../controllers/view_model.dart';
import '../themes/app_colors.dart';
import 'package:provider/provider.dart';

// Aquesta classe representa una vista que mostra les marques (puntuacions) del jugador.
class MarksView extends StatelessWidget {
  const MarksView({super.key}); // Contructor de la classe MarksView

  @override
  Widget build(BuildContext context) {
    final marks = context.watch<ViewModel>().marks; // Obtenim les marques del ViewModel
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marks'), // Títol de la barra d'aplicació
        backgroundColor: AppColors.primaryColor, // Color de fons de la barra d'aplicació
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: marks.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (_, i) => ListTile(
          leading: const Icon(Icons.star),
          title: Text('${marks[i].points} points'), // Mostra els punts de la marca
          subtitle: // Mostra la data de la marca en format dd/MM/yyyy – HH:mm
              Text(DateFormat('dd/MM/yyyy – HH:mm').format(marks[i].date)),
        ),
      ),
    );
  }
}
