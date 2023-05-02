import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice'),
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 1;
  int rightDicenumber = 1;

  void DiceChangeFace(){
    setState(() {
      leftDicenumber = Random().nextInt(6) + 1;
      rightDicenumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
          children: <Widget>[
            Expanded(
              child: FloatingActionButton(
                onPressed: (){
                  DiceChangeFace();
                  print("left button has pressed");
                },
                child: Image.asset("images/dice$leftDicenumber.png"),
              ),
            ),

            Expanded(
              child: FloatingActionButton(
                onPressed: (){
                  DiceChangeFace();
                  print("right button has pressed");
                },
                child: Image.asset("images/dice$rightDicenumber.png"),
              ),
            ),
          ]
      ),
    );
  }
}

