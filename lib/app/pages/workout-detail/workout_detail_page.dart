import 'package:flutter/material.dart';
import 'package:gym_app/app/models/workout.dart';
import 'package:gym_app/app/pages/tabs/components/articles/articles_page.dart';

class WorkoutDetailPage extends StatelessWidget {
  static const routeName = '/workouts/detail';

  @override
  Widget build(BuildContext context) {
    final workout = ModalRoute.of(context).settings.arguments as Workout;

    return Scaffold(
      appBar: AppBar(
        title: Text(workout.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Hero(
                tag: 'imageHero${workout.id}',
                child: Image(
                  image: NetworkImage(workout.imageUrl),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              ArticlesPage(),
            ],
          ),
        ),
      ),
    );
  }
}
