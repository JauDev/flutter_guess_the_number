import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../controllers/view_model.dart';
import '../themes/app_colors.dart';
import 'package:provider/provider.dart';

class MarksView extends StatelessWidget {
  const MarksView({super.key});

  @override
  Widget build(BuildContext context) {
    final marks = context.watch<ViewModel>().marks;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marks'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: marks.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (_, i) => ListTile(
          leading: const Icon(Icons.star),
          title: Text('${marks[i].points} points'),
          subtitle:
              Text(DateFormat('dd/MM/yyyy – HH:mm').format(marks[i].date)),
        ),
      ),
    );
  }
}
