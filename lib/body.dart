import 'package:flutter/material.dart';
import 'package:more_options/add_task.dart';
import 'package:more_options/welcome.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Welcome(name: 'KomoriaWeb', avatar: 'images/1.png'),
        AddTaskButton(),// class Welcome.dart

      ],
    );
  }
}
