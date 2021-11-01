import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyDiceRollingApp());
}

class MyDiceRollingApp extends StatefulWidget {
  const MyDiceRollingApp({Key? key}) : super(key: key);

  @override
  _MyDiceRollingAppState createState() => _MyDiceRollingAppState();
}

class _MyDiceRollingAppState extends State<MyDiceRollingApp> {
 int nextDiceImage = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text("Dice Rolling App")),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 55.0),
                  child: Image.asset('assets/dice/download$nextDiceImage.png'),
                )),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(60, 150, 0, 70),
                    child: ElevatedButton (
                      onPressed: () {
                        setState(() {
                          nextDiceImage = Random().nextInt(6) + 1;
                        });
                      }, child: Text('Roll The Dice'),

                    ),
                  ),
                ))
          ],

        ),
      ),
    );
  }
}
