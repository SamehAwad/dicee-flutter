import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(DicePage());
}

class DicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DicePageState();
  }
}

class DicePageState extends State<DicePage> {
  @override
  var dicePhoto = [
    "images/dice1.png",
    "images/dice2.png",
    "images/dice3.png",
    "images/dice4.png",
    "images/dice5.png",
    "images/dice6.png"
  ];
  int randomNumber = Random().nextInt(6);
  int randomNumber2 = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage(dicePhoto[randomNumber]),
                        width: 200,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage(dicePhoto[randomNumber2]),
                        width: 200,
                      ),
                    ),
                  ),
                  // SizedBox(width: 30,),
                ],
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  randomNumber = Random().nextInt(6);
                  randomNumber2 = Random().nextInt(6);
                }),
                child: Text(
                  "Roll",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
