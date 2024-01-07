import 'package:flutter/material.dart';

class ColoredContainer extends StatelessWidget {
  final Color color;
  final double height;

  const ColoredContainer({super.key, required this.color, required this.height});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, -1.2),
      child: Container(
        height: height,
        width: 600,
        decoration: BoxDecoration(color: color),
      ),
    );
  }
}