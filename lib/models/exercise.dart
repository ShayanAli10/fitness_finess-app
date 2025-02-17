class Exercise {
  final String name;
  final int duration; // Duration in minutes
  final int caloriesBurned;
  final String description;

  Exercise({
    required this.name,
    required this.duration,
    required this.caloriesBurned,
    this.description = '',
  });

  // Convert to Map (for storing in Firebase/local storage)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'duration': duration,
      'caloriesBurned': caloriesBurned,
      'description': description,
    };
  }

  // Create an Exercise from a Map
  factory Exercise.fromMap(Map<String, dynamic> map) {
    return Exercise(
      name: map['name'],
      duration: map['duration'],
      caloriesBurned: map['caloriesBurned'],
      description: map['description'] ?? '',
    );
  }
}
