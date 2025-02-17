import 'package:fitness_app/models/workout.dart';

import '../model/exercise.dart';
import '../model/workout.dart';
import '../models/exercise.dart';

class WorkoutData {
  static List<Workout> workouts = [
    Workout(
      title: "Full Body Workout",
      exercises: [
        Exercise(name: "Push-Ups", duration: 10, caloriesBurned: 50),
        Exercise(name: "Squats", duration: 15, caloriesBurned: 70),
        Exercise(name: "Jumping Jacks", duration: 5, caloriesBurned: 30),
      ],
    ),
    Workout(
      title: "Cardio Blast",
      exercises: [
        Exercise(name: "Running", duration: 20, caloriesBurned: 200),
        Exercise(name: "Jump Rope", duration: 10, caloriesBurned: 100),
      ],
    ),
    Workout(
      title: "Strength Training",
      exercises: [
        Exercise(name: "Deadlifts", duration: 15, caloriesBurned: 150),
        Exercise(name: "Bench Press", duration: 10, caloriesBurned: 120),
      ],
    ),
  ];
}
