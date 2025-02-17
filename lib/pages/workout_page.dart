import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workout Page"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              "Today's Workout",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),

            // Exercise List
            Text(
              "Exercises:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildExerciseCard("Push-ups", "3 sets of 12 reps"),
            _buildExerciseCard("Squats", "3 sets of 15 reps"),
            _buildExerciseCard("Plank", "Hold for 60 seconds"),
            _buildExerciseCard("Lunges", "3 sets of 12 reps each leg"),
            SizedBox(height: 30),

            // Timer Button (for example, for a workout timer)
            ElevatedButton(
              onPressed: () {
                // You can navigate to a Timer page or implement timer functionality here
              },
              child: Text("Start Workout Timer"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12), backgroundColor: Colors.blueAccent,
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build individual exercise cards
  Widget _buildExerciseCard(String exerciseName, String exerciseDetails) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(Icons.fitness_center, color: Colors.blueAccent),
        title: Text(exerciseName),
        subtitle: Text(exerciseDetails),
      ),
    );
  }
}
