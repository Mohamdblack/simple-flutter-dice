import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({
    super.key,
  });

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int left0ne = 4;
  int right0ne = 6;

  void genrateDice() {
    setState(() {
      left0ne = Random().nextInt(6) + 1;
      right0ne = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 32, 52),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Ludo App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () => genrateDice(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/dice$left0ne.png",
                    width: 150,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Image.asset(
                    "assets/dice$right0ne.png",
                    width: 150,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          left0ne == right0ne
              ? const Text(
                  "They become same wow 🎊🎉",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
