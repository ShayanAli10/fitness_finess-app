import 'exercise.dart';

class Workout {
  final String title;
  final List<Exercise> exercises;

  Workout({
    required this.title,
    required this.exercises,
  });

  // Calculate total duration
  int get totalDuration => exercises.fold(0, (sum, exercise) => sum + exercise.duration);

  // Calculate total calories burned
  int get totalCaloriesBurned => exercises.fold(0, (sum, exercise) => sum + exercise.caloriesBurned);

  // Convert to Map
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'exercises': exercises.map((e) => e.toMap()).toList(),
    };
  }

  // Create Workout from a Map
  factory Workout.fromMap(Map<String, dynamic> map) {
    return Workout(
      title: map['title'],
      exercises: List<Exercise>.from(map['exercises'].map((e) => Exercise.fromMap(e))),
    );
  }
}
