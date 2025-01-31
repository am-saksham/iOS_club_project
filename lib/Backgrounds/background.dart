import 'package:flutter/material.dart';

class LinearGradientBackground extends StatelessWidget {
  final Widget child;
  const LinearGradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF2A2829),
      ),
      child: child,
    );
  }
}