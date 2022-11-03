import 'package:flutter/material.dart';
import 'package:more_options/task.dart';

// class & constructor
class TaskProvider extends ChangeNotifier {
  List<Task> task = [
    Task(
      'My first tassk', // title:
      false, // completed:
    )
  ];

  List<Task> get tasks {
    return task;
  }

// function Add
  void addTask(task, bool bool) {
    tasks.add(task);
    notifyListeners(); // trigger function 
  }

  // function Remove
  void removeTask(index) {
    tasks.removeAt(index);
    notifyListeners();
  }

// function make taskCompleted
  void taskCompleted(index) {
    tasks[index].completed = !tasks[index].completed;
    notifyListeners();
  }
}
