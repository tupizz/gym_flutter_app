import 'package:flutter/material.dart';
import 'package:gym_app/app/models/workout.dart';

import './workout_item.dart';

class WorkoutGrid extends StatelessWidget {
  var workouts = [
    Workout(
      id: '1d85cfd1-35fa-425a-b939-56525f9c9f3f',
      name: '3 Day Workout Routine and Diet for Beginners',
      description:
          'Just starting out in the gym and need a solid workout routine with some dieting advice? Look no further! This 3 day weekly routine is perfect for beginners!',
      duration: 75,
      imageUrl:
          'https://cdn.muscleandstrength.com/sites/default/files/field/feature-wide-image/workout/3-day-beginner-workout-wide.jpg',
      isFavorite: false,
      daysPerWeek: 3,
      type: 'ful-body',
    ),
    Workout(
      id: '92353f2a-4ec6-4adb-93c6-c37c0ad5a2b2',
      name: 'September Starter Workout: 4 Week Beginner Workout Routine',
      description:
          'Start getting stronger this September with this starter workout program. This program, designed to build muscle, is perfect for anyone at any experience level.',
      duration: 75,
      imageUrl:
          'https://cdn.muscleandstrength.com/sites/default/files/field/feature-wide-image/workout/september-starter-wide.jpg',
      isFavorite: false,
      daysPerWeek: 4,
      type: 'split',
    ),
    Workout(
      id: 'cd044029-128d-43ce-961f-978161a67f32',
      name: '12 Week Fat Destroyer: Complete Fat Loss Workout & Diet Program',
      description:
          'This is a complete 12 week program to help you get ripped. Feature includes detailed diet plan and cardio schedule, along with a 4 day upper/lower muscle building split.',
      duration: 40,
      imageUrl:
          'https://cdn.muscleandstrength.com/sites/default/files/field/feature-wide-image/workout/fat-destroyer-workout.jpg',
      isFavorite: false,
      daysPerWeek: 4,
      type: 'ful-body',
    ),
    Workout(
      id: 'bc066293-7d49-4676-814e-37e2e10eadf6',
      name: '8x8 Workout: Lean Muscle Gainz Workout',
      description:
          'Ramp up your muscle growth phase with a high volume approach. This 4 day split incorporates an 8x8 volume training approach to help you build muscle!',
      duration: 70,
      imageUrl:
          'https://cdn.muscleandstrength.com/sites/default/files/field/feature-wide-image/workout/8x8-lean-mass-workout-wide.jpg',
      isFavorite: false,
      daysPerWeek: 4,
      type: 'split',
    ),
    Workout(
      id: 'ea779949-85c6-4a45-adbb-dececdad7397',
      name: 'Hugh Jackman\'s Workout: Strong, Lean & Powerful',
      description:
          'Get ripped like Wolverine by applying the same underlying training principles Hugh Jackman did while working out in preparation for his role on the big screen.',
      duration: 50,
      imageUrl:
          'https://cdn.muscleandstrength.com/sites/default/files/field/feature-image/workout/hugh_jackman_wolverine_body_workout_0.jpg',
      isFavorite: false,
      daysPerWeek: 4,
      type: 'split',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: workouts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, index) => WorkoutItem(workout: workouts[index]),
      ),
    );
  }
}
