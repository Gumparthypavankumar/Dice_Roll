import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void roll() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DiceRoll")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image(
                          image: AssetImage(
                              'assets/images/dice-png-$leftDiceNumber.png')))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image(
                          image: AssetImage(
                              'assets/images/dice-png-$rightDiceNumber.png'))))
            ],
          ),
          ElevatedButton(
              onPressed: roll,
              child:
                  Text("Roll", style: TextStyle(fontWeight: FontWeight.bold)))
        ]),
      ),
    );
  }
}
