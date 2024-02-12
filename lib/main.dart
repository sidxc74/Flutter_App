import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  List<String> diceImages = [
    'assets/dice1.png',
    'assets/dice2.png',
    'assets/dice3.png',
    'assets/dice4.png',
    'assets/dice5.png',
    'assets/dice6.png',
  ];

  String leftDiceImage = 'assets/dice1.png';
  String rightDiceImage = 'assets/dice1.png';

  void rollDice() {
    setState(() {
      leftDiceImage = diceImages[Random().nextInt(diceImages.length)];
      rightDiceImage = diceImages[Random().nextInt(diceImages.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: rollDice ,
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Dice",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      leftDiceImage,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      rightDiceImage,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Text(
                "Let's Roll..!!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
