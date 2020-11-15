import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  @override
  _DiceRollingAppState createState() => _DiceRollingAppState();
}

class _DiceRollingAppState extends State<DiceApp> {
  int nextDiceImage = 1;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Center(
            child: Text('Dice Rolling App'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: DiceLogoImageAssest(),
            ),
            Expanded(
              child: Image.asset('images/dice$nextDiceImage.png'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  nextDiceImage = Random().nextInt(6) + 1;
                });
              },
              child: Text('Roll'),
            ),
          ],
        ),
      ),
    );
  }
}

class DiceLogoImageAssest extends StatelessWidget {
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/diceeLogo.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
