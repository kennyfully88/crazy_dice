import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var rng = 1;

  late Image image0;
  late Image image1;
  late Image image2;
  late Image image3;
  late Image image4;
  late Image image5;
  late Image image6;
  late Image image7;
  late Image image8;
  late Image image9;

  @override
  void initState() {
    super.initState();
    image0 = Image.asset('assets/dice0.png');
    image1 = Image.asset('assets/dice1.png');
    image2 = Image.asset('assets/dice2.png');
    image3 = Image.asset('assets/dice3.png');
    image4 = Image.asset('assets/dice4.png');
    image5 = Image.asset('assets/dice5.png');
    image6 = Image.asset('assets/dice6.png');
    image7 = Image.asset('assets/dice7.png');
    image8 = Image.asset('assets/dice8.png');
    image9 = Image.asset('assets/dice9.png');
  }

  @override
  void didChangeDependencies() {
    precacheImage(image0.image, context);
    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    precacheImage(image3.image, context);
    precacheImage(image4.image, context);
    precacheImage(image5.image, context);
    precacheImage(image6.image, context);
    precacheImage(image7.image, context);
    precacheImage(image8.image, context);
    precacheImage(image9.image, context);
    super.didChangeDependencies();
  }

  late final dices = [
    image0,
    image1,
    image2,
    image3,
    image4,
    image5,
    image6,
    image7,
    image8,
    image9
  ];

  void rollDice() {
    setState(() {
      rng = Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        dices[rng],
        Directionality(
          textDirection: TextDirection.ltr,
          child: TextButton(
            onPressed: rollDice,
            child: const Text('Roll Dice', textScaleFactor: 2),
          ),
        )
      ],
    );
  }
}
