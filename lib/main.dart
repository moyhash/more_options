import 'package:flutter/material.dart';
import 'package:more_options/body.dart';
import 'app_drawer.dart';

// https://www.youtube.com/watch?v=_yxMSnS6ycg&ab_channel=BraaSite%D8%A8%D8%B1%D8%A7%D8%B3%D8%A7%D9%8A%D8%AA

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light
          //primarySwatch: Colors.blue,
          ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Options'),
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text('Menu Exemple 1'),
              ),
              const PopupMenuItem(
                child: Text('Menu Exemple 2'),
              ),
            ],
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: const Body(),
    );
  }
}
