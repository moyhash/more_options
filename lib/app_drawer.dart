import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text('Drawer AppVar'),
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Calendrier du Jour'),
            onTap: () {},
          ),
          const Divider(
            height: 20,
            thickness: 5,
          ),
          ListTile(
            leading: const Icon(Icons.alarm),
            title: const Text('Alarm Reveil'),
            onTap: () {},
          ),
          const Divider(
            height: 20,
            thickness: 5,
          ),
        ],
      ),
    );
  }
}
