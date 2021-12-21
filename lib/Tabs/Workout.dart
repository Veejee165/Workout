import 'package:flutter/material.dart';
import 'package:untitled/Workouts/workouts.dart';
import 'package:untitled/Workouts/cards.dart';

var workouts = ['Planks', 'Pushups', 'Handstands', 'Squats'];
var images = [
  'https://images.unsplash.com/photo-1566241142559-40e1dab266c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
  'https://images.unsplash.com/photo-1598971639058-fab3c3109a00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1001&q=80',
  'https://images.unsplash.com/photo-1606689845968-30c7c55c71d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80',
  'https://images.unsplash.com/photo-1536922246289-88c42f957773?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2104&q=80'
];

class MyWorkout extends StatefulWidget {
  const MyWorkout({Key? key}) : super(key: key);

  @override
  _MyWorkoutState createState() => _MyWorkoutState();
}

class _MyWorkoutState extends State<MyWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ListTile(
                  title: MyCard(
                    images: images[index],
                    title: workouts[index],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Workouts(workout: workouts[index])),
                    );
                  });
            }));
  }
}
