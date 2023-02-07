class Task {
  final String taskTitle;
  bool isDone;
  Task({required this.taskTitle, required this.isDone});

  void toggleTask() {
    isDone = !isDone;
  }
}