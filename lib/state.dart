import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_2/main.dart';

import 'package:flutter_application_2/pages/auto.dart';
import 'package:flutter_application_2/pages/endgame.dart';
import 'package:flutter_application_2/pages/home.dart';
import 'package:flutter_application_2/pages/submission_page.dart';
import 'package:flutter_application_2/pages/teleop.dart';

class ScoutingAppState extends State<ScoutingApp> {
  int pageIndex = 0;
  // Track the number of times speaker scoring button is pressed
  static int speakerButtonPressCount = 0;
  
  //variables
  //AUTO
  static int autoAmpScored = 0;
  static int autoSpeakerScored = 0;
  static bool? autoMobility = false;
  static bool autoGroundIntake1 = false;
  static bool autoGroundIntake2 = false;
  static bool autoGroundIntake3 = false;
  static bool autoGroundIntake4 = false;
  static bool autoGroundIntake5 = false;
  static bool autoGroundIntake6 = false;
  static bool autoGroundIntake7 = false;
  static bool autoGroundIntake8 = false;
  static bool autoGroundIntake9 = false;
  static bool autoGroundIntake10 = false;
  static bool autoGroundIntake11 = false;

  //TELEOP
  static int teleopAmpScored = 0;
  static int teleopSpeakerScored = 0;
  static bool? teleopDefence = false;
  static bool? teleopFoul = false;
  static bool? teleopTechFoul = false;

  //text editing controllers
  //AUTO
  static var autoAmpController = TextEditingController();
  static var autoSpeakerController = TextEditingController();

  //TELEOP
  static var teleopAmpController = TextEditingController();
  static var teleopSpeakerController = TextEditingController();

  //functions
  //AUTO
  static incrementAutoAmp(int incValue) {
    autoAmpScored += incValue;
    autoAmpController.text = '$autoAmpScored';
    UpdateShouldNotify;
  }
  static incrementAutoSpeaker(int incValue) {
    autoSpeakerScored += incValue;
    autoSpeakerController.text = '$autoSpeakerScored';
    UpdateShouldNotify;
  }
  
  //TELEOP
  static incrementTeleopAmp(int incValue) {
    teleopAmpScored += incValue;
    teleopAmpController.text = '$teleopAmpScored';
    UpdateShouldNotify;
  }

  static incrementTeleopSpeaker(int incValue) {
    teleopSpeakerScored += incValue;
    teleopSpeakerController.text = '$teleopSpeakerScored';
    UpdateShouldNotify;
  }

  
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
  
}*/*/