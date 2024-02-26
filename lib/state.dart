import 'package:flutter/material.dart';
import 'package:scouting_app_865_2024/main.dart';

import 'package:scouting_app_865_2024/pages/auto.dart';
import 'package:scouting_app_865_2024/pages/endgame.dart';
import 'package:scouting_app_865_2024/pages/home.dart';
import 'package:scouting_app_865_2024/pages/submission_page.dart';
import 'package:scouting_app_865_2024/pages/teleop.dart';

class ScoutingAppState extends State<ScoutingApp> {
  int pageIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: pageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
        destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.videogame_asset_off), label: 'Auto'),
        NavigationDestination(icon: Icon(Icons.videogame_asset),label: 'Teleop'),
        NavigationDestination(icon: Icon(Icons.access_time), label: 'Endgame'),
        NavigationDestination(icon: Icon(Icons.qr_code), label: 'Submission')
      ]),

      body: <Widget>[
        const HomePage(),
        const AutoPage(),
        const TeleopPage(),
        const EndgamePage(),
        const SubmissionPage()
      ][pageIndex]
    );
  }
}

/*
class MyAppState extends ChangeNotifier {
  /*
  FOR TESTING ONLY
  note: in this code, typing in the text field does not change the score counter value, only the text value

  int scoreCounter1 = 0;
  final scoreCounterController1 = TextEditingController();
  changeValue1(int increment) {
    scoreCounter1 += increment;
    scoreCounterController1.text = '$scoreCounter1';
    notifyListeners();
  }
  */
}
*/
