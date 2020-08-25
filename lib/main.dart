import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceeNumber;
  int rightdiceeNumber;
  Random random = new Random();

  void rightdice(){
    setState(() {
      rightdiceeNumber=random.nextInt(6)+1;
    });
  }

  void leftdice(){
    setState(() {
      leftdiceeNumber=random.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    leftdiceeNumber=random.nextInt(6)+1;
    rightdiceeNumber=random.nextInt(6)+1;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                leftdice();
              },
              child: Image.asset('images/dice$leftdiceeNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                rightdice();
              },
              child: Image.asset('images/dice$rightdiceeNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
