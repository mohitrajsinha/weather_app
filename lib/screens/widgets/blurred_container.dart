import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredContainer extends StatelessWidget {
  const BlurredContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 80, sigmaY: 100),
      child: Container(
        decoration: const BoxDecoration(color: Colors.transparent),
      ),
    );
  }
}