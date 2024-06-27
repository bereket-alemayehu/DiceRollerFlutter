import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      // this method inforce the dart to re-execute the build method and take the updated value.
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const DrawerHeader(
            child: Text("Bekisha's first launch",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.amber,
                ))),

        Image.asset(
          'assets/images/dice$currentDiceRoll.jpg',
          width: 150,
        ),
        const SizedBox(
          height: 20,
        ),
        /////////////// This is about the button that handle the change of the image.
        ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              // padding: const EdgeInsets.all(
              //   14,
              // ),,
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 23,
              ),
            ),
            child: const Text(
              "Roll dice",
            ))
      ],
    );
  }
}
