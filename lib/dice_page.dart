import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  int diceNumber = 1;

  void rollDice() {
    setState(
      () => diceNumber = randomizer.nextInt(6) + 1,
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.deepPurple,
        // appBar: AppBar(
        //   title: const Center(child: Text('Dice')),
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 33, 5, 109),
                Color.fromARGB(255, 68, 21, 149),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/dice-$diceNumber.png',
                  width: 200,
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28),
                  ),
                  child: const Text('Roll Dice'),
                ),
              ],
            ),
          ),
        ),
      );
}
