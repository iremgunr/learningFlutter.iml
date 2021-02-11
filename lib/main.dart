import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Which Explosion You Are?',
            style: TextStyle(
                color: Colors.lightBlueAccent, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.pink[50],
        ),
        body: Explosion(),
      ),
    ));

class Explosion extends StatefulWidget {
  @override
  ExplosionState createState() => ExplosionState();
}

class ExplosionState extends State<Explosion> {
  int picNum = 1;
  String mood = "";

  void changepic() {
    setState(() {
      picNum = Random().nextInt(6) + 1;
    });
  }

  void characteristic() {
    setState(() {
      
       if (picNum == 1) {
        mood = "you are crazy";
      } else if (picNum == 2) {
        mood = 'you are stupid ';
      } else if (picNum == 3) {
        mood = 'you are angel';
      } else if (picNum == 4) {
        mood = 'you are emotional';
      } else if (picNum == 5) {
        mood = 'you are attractive';
      } else if (picNum == 6) {
        mood = 'you are overthinker';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changepic();
                characteristic();
              },
              child: Image.asset('images/p$picNum.jpg',
                  width: 400, height: 400, fit: BoxFit.contain),
            ),
          ),
          Container(
            width: 300,
            height: 300,
            child: Text(
              '$mood',
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
