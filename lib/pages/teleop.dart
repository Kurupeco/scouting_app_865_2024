import 'package:flutter/material.dart';

import 'package:scouting_app_865_2024/components/score_counter.dart';
import 'package:scouting_app_865_2024/util/state.dart';
import 'package:scouting_app_865_2024/components/checkmark_button.dart';
import 'package:scouting_app_865_2024/components/ground_intake_button.dart';
import 'package:scouting_app_865_2024/util/themes.dart';

class TeleopPage extends StatefulWidget {
  const TeleopPage({super.key});

  // This widget is the root of your application.
  @override
  State<TeleopPage> createState() => _TeleopPageState();
}

class _TeleopPageState extends State<TeleopPage> {
  void changeTeleopDefense(bool? newValue) {
    setState(() {
      ScoutingAppState.teleopDefense = newValue;
    });
  }

  void incrementTeleopAmp(int incValue) {
    setState(() {
      ScoutingAppState.teleopAmpScored += incValue;
      int teleopAmpScored = ScoutingAppState.teleopAmpScored;
      ScoutingAppState.teleopAmpController.text = '$teleopAmpScored';
    });
  }

  void incrementTeleopSpeaker(int incValue) {
    setState(() {
      ScoutingAppState.teleopSpeakerScored += incValue;
      int teleopSpeakerScored = ScoutingAppState.teleopSpeakerScored;
      ScoutingAppState.teleopSpeakerController.text = '$teleopSpeakerScored';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Teleop',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: lightTheme.colorScheme.primary,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Amp:'),
              const SizedBox(height: 8),
              ScoreCounter(
                  scoreCounter: ScoutingAppState.teleopAmpScored,
                  changeValue: incrementTeleopAmp,
                  scoreCounterController: ScoutingAppState.teleopAmpController),
              const SizedBox(height: 8),
              const Text('Speaker'),
              const SizedBox(height: 8),
              ScoreCounter(
                  scoreCounter: ScoutingAppState.teleopSpeakerScored,
                  changeValue: incrementTeleopSpeaker,
                  scoreCounterController:
                      ScoutingAppState.teleopSpeakerController),
              const SizedBox(height: 8),
              const Text('Fouls'),
              const SizedBox(height: 8),
              ScoreCounter(
                  scoreCounter: ScoutingAppState.teleopSpeakerScored,
                  changeValue: incrementTeleopSpeaker,
                  scoreCounterController:
                      ScoutingAppState.teleopSpeakerController),
              const SizedBox(height: 8),
              ElevatedButton(
                //when pressed, updates the value for the teleop amp and speaker variables to match the text
                //used when the number is changed by typing rather then with the buttons
                //this would also be useful to add for other uses of the score counter widget
                child: const Text('Sync typed entries for teleop'),
                onPressed: () {
                  ScoutingAppState.teleopAmpScored =
                      int.parse(ScoutingAppState.teleopAmpController.text);
                  ScoutingAppState.teleopSpeakerScored =
                      int.parse(ScoutingAppState.teleopSpeakerController.text);
                },
              ),
              const SizedBox(height: 8),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 200,
                        child: CheckmarkButton(
                            isChecked: ScoutingAppState.teleopDefense,
                            changeState: changeTeleopDefense,
                            checkboxTitle: 'Defense',
                            checkboxSubtitle: '')),
                    const SizedBox(height: 8)
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 200,
                        child: CheckmarkButton(
                            isChecked: ScoutingAppState.teleopDefense,
                            changeState: changeTeleopDefense,
                            checkboxTitle: 'Foul',
                            checkboxSubtitle: '')),
                    const SizedBox(height: 8)
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 200,
                        child: CheckmarkButton(
                            isChecked: ScoutingAppState.teleopDefense,
                            changeState: changeTeleopDefense,
                            checkboxTitle: 'Tech Foul',
                            checkboxSubtitle: '')),
                    const SizedBox(height: 8)
                  ]),
            ]));
  }
}
