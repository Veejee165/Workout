import 'package:untitled/Tabs/Workout.dart';
import 'package:untitled/Tabs/Meditation.dart';
import 'package:untitled/Tabs/Diet.dart';
import 'package:flutter/material.dart';

const List<Tab> tabs = <Tab>[
  Tab(
    child: Text(
      'Workout',
      style: TextStyle(color: Colors.tealAccent, fontSize: 18),
    ),
  ),
  Tab(
    child: Text(
      'Meditation',
      style: TextStyle(color: Colors.tealAccent, fontSize: 18),
    ),
  ),
  Tab(
    child: Text(
      'Diet',
      style: TextStyle(color: Colors.tealAccent, fontSize: 18),
    ),
  ),
];

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: tabs.length,
        // The Builder widget is used to have a different BuildContext to access
        // closest DefaultTabController.
        child: Builder(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal.withOpacity(0.5),
              title: Text('Fitness',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: Colors.black.withOpacity(0.4))),
              bottom: TabBar(
                indicatorColor: Colors.black,
                tabs: tabs,
              ),
            ),
            body: TabBarView(children: [MyWorkout(), Meditation(), Diet()]),
          );
        }),
      ),
    );
  }
}
