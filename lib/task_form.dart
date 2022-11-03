import 'package:flutter/material.dart';
import 'package:more_options/task.dart';
import 'package:more_options/task_provider.dart';
import 'package:provider/provider.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({Key? key}) : super(key: key);

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final formkey = GlobalKey<FormState>();
  final taskTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
            top: -40.0,
            right: -40.0,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.close),
            ),
          ),
          Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: taskTitle,
                    decoration:
                        const InputDecoration(hintText: 'Add Task Title...'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    child: const Text('Add Task'),
                    onPressed: () => {
                      if (formkey.currentState!.validate())
                        {
                          Navigator.of(context).pop(),
                          context.read<TaskProvider>().addTask(
                                taskTitle.text,
                                false,
                              ),
                        }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
