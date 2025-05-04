import 'package:flutter/material.dart';

// Aquesta classe representa una vista arrodonida amb un icona i una acció de toc opcional.
class RoundedView extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  const RoundedView({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    final child = Icon(icon, size: 28);
    return InkWell(
      borderRadius: BorderRadius.circular(28),
      onTap: onTap,
      child: Container(
        width: 56,
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Theme.of(context).colorScheme.onSurface),
        ),
        child: child,
      ),
    );
  }
}
