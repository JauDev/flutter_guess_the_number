import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../themes/app_colors.dart';
import '../controllers/view_model.dart';
import 'package:provider/provider.dart';
import '../models/mark.dart';

class MarksView extends StatelessWidget {
  const MarksView({super.key});

  @override
  Widget build(BuildContext context) {
    final marks = context.watch<ViewModel>().marks; // Llista de Mark
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marks'),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (_, i) => ListTile(
          leading: const Icon(Icons.star),
          title: Text('${marks[i].points} points'),
          subtitle: Text(DateFormat('dd/MM/yyyy HH:mm').format(marks[i].date)),
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: marks.length,
      ),
    );
  }
}
