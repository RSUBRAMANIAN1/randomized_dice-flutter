import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
          ),
          backgroundColor: Colors.red,
        ),
        body: dice(),
      ),
    ),
  );
}



class dice extends StatefulWidget {
  dice({Key key}) : super(key: key);

  @override
  _diceState createState() => _diceState();
}

class _diceState extends State<dice> {
    int dicno = 1;
  int dicno1 = 2;
  func(){
     setState(() {
                    dicno = Random().nextInt(6) + 1;
                   dicno1= Random().nextInt(6) + 1;
                 });

  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: func,
                child: Image.asset(
                  'images/dice$dicno1.png',
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: func,
                child: Image.asset(
                  'images/dice$dicno.png',
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