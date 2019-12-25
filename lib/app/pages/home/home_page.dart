import 'package:flutter/material.dart';

import './components/workout_grid.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gym Exercices', style: Theme.of(context).textTheme.title),
      ),
      body: WorkoutGrid(),
    );
  }
}
