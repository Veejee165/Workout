import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/widgets.dart';

class Workouts extends StatefulWidget {
  const Workouts({Key? key, required this.workout}) : super(key: key);
  final String workout;

  @override
  State<Workouts> createState() => _WorkoutsState();
}

class _WorkoutsState extends State<Workouts> {
  int _counter = 60;
  start_timer() {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (_counter == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _counter--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      body: Center(
        child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 350),
                child: CloseButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Text(
                '${widget.workout}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    decoration: TextDecoration.underline,
                    color: Colors.amber),
              ),
              SizedBox(
                height: 235,
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 75,
              ),
              RaisedButton(
                onPressed: () {
                  start_timer();
                },
              ),
              Text(
                '(Press the button to start your workout)',
                style: TextStyle(fontSize: 20, color: Colors.blueGrey),
              ),
              SizedBox(
                height: 75,
              ),
            ]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
