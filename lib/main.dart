import 'package:flutter/material.dart';

import 'dice_roll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(child: DiceRoll()),
    );
  }
}
