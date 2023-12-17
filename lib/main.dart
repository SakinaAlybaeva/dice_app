import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int soljakDice = 1;

  int onjakDice = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Tapshyrma 5',
            style: TextStyle(color: Colors.cyan),
          ),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    setState(() {});
                    print('sol jak');
                    soljakDice = Random().nextInt(6) + 1;
                    onjakDice = Random().nextInt(6) + 1;
                  },
                  child: Image.asset(
                    'assets/images/dice$soljakDice.png',
                    color: Colors.cyan,
                    height: 130,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    setState(() {});
                    print('on jak');
                    onjakDice = Random().nextInt(6) + 1;
                    soljakDice = Random().nextInt(6) + 1;
                  },
                  child: Image.asset(
                    'assets/images/dice$onjakDice.png',
                    color: Colors.cyan,
                    height: 130,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
