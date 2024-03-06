import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          //insert destinations here
          destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.videogame_asset_off), label: 'Auto'),
          NavigationDestination(icon: Icon(Icons.videogame_asset),label: 'Teleop'),
          NavigationDestination(icon: Icon(Icons.access_time), label: 'Endgame'),
          NavigationDestination(icon: Icon(Icons.qr_code), label: 'Submission')
        ]),
      ),
    );
  }
}
