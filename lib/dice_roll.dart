import 'package:flutter/material.dart';

import './dice_roller.dart';

class DiceRoll extends StatelessWidget {
  const DiceRoll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          child: const Text(
            'Crazy Dice',
            textDirection: TextDirection.ltr,
            textScaleFactor: 3,
          ),
        ),
        const DiceRoller(),
      ],
    );
  }
}
