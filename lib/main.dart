import 'package:flutter/material.dart';
import 'package:scouting_app_865_2024/themes/light_theme.dart';
import 'package:scouting_app_865_2024/state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {  
  const MyApp({super.key});

  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: const ScoutingApp()
    );
  }
}

class ScoutingApp extends StatefulWidget {
  const ScoutingApp({super.key});

  @override
  State<ScoutingApp> createState() => ScoutingAppState();
}

