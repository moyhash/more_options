import 'package:flutter/material.dart';
import 'package:more_options/task_form.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () => showDialog(
              builder: (BuildContext context) {
                return const TaskForm();
              },
              context: context,
            ),
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.add));
  }
}
