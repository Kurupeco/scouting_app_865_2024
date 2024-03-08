import 'package:flutter/material.dart';

import 'package:scouting_app_865_2024/util/state.dart';
import 'package:scouting_app_865_2024/util/themes.dart';

class EndgamePage extends StatefulWidget {
  const EndgamePage({super.key});
  @override
  State<EndgamePage> createState() => _EndgamePageState();
}

class _EndgamePageState extends State<EndgamePage> {
  ScoutingAppState state =
      ScoutingAppState(); // Creating an instance of the state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Endgame',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: lightTheme.colorScheme.primary,
      ),
      body: Column(
        children: [
          CheckboxListTile(
            title: const Text('Climb'),
            value: ScoutingAppState.climb,
            onChanged: (bool? value) {
              setState(() {
                ScoutingAppState.climb = value!;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Park'),
            value: ScoutingAppState.park,
            onChanged: (bool? value) {
              setState(() {
                ScoutingAppState.park = value!;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Trap'),
            value: ScoutingAppState.trap,
            onChanged: (bool? value) {
              setState(() {
                ScoutingAppState.trap = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
