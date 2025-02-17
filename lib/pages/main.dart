
import 'package:fitness_app/pages/home_page.dart';
import 'package:flutter/material.dart';
//import 'pages/home_page.dart';
import 'package:provider/provider.dart';  // Import the provider package if you're using it

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // Here you should provide the state management class (replace 'Workout' with your state class)
      create: (context) => Workout(),  // Make sure you have a Workout model or ViewModel
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}



class Workout extends ChangeNotifier {
  // Example variable
  String workoutTitle = "Morning Workout";

  void updateTitle(String newTitle) {
    workoutTitle = newTitle;
    notifyListeners();  // Notifies all listeners when data changes
  }
}

