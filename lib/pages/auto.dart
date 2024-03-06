import 'package:flutter/material.dart';

import 'package:scouting_app_865_2024/components/score_counter.dart';
import 'package:scouting_app_865_2024/state.dart';
import 'package:scouting_app_865_2024/components/checkmark-button.dart';
import 'package:scouting_app_865_2024/components/ground_intake_button.dart';

class AutoPage extends StatefulWidget {
  const AutoPage({super.key});

  // This widget is the root of your application.
  @override
  State<AutoPage> createState() => _AutoPageState();
}

class _AutoPageState extends State<AutoPage> {
  void changeAutoMobility(bool? newValue) {
    setState((){
      ScoutingAppState.autoMobility = newValue;
    });
  }


  void incrementAutoAmp(int incValue) {
    setState((){
    ScoutingAppState.autoAmpScored += incValue;
    int autoAmpScored = ScoutingAppState.autoAmpScored;
    ScoutingAppState.autoAmpController.text = '$autoAmpScored';
    });
  }

  void incrementAutoSpeaker(int incValue) {
    setState((){
    ScoutingAppState.autoSpeakerScored += incValue;
    int autoSpeakerScored = ScoutingAppState.autoSpeakerScored;
    ScoutingAppState.autoSpeakerController.text = '$autoSpeakerScored';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Amp:'),
        const SizedBox(height:8),
        ScoreCounter(
          scoreCounter: ScoutingAppState.autoAmpScored,
          changeValue: incrementAutoAmp,
          scoreCounterController: ScoutingAppState.autoAmpController
        ),
        const SizedBox(height:8),
        const Text('Speaker'),
        const SizedBox(height:8),
        ScoreCounter(
          scoreCounter: ScoutingAppState.autoSpeakerScored,
          changeValue: incrementAutoSpeaker,
          scoreCounterController: ScoutingAppState.autoSpeakerController
        ),
        const SizedBox(height:8),
        ElevatedButton(
          //when pressed, updates the value for the auto amp and speaker variables to match the text
          //used when the number is changed by typing rather then with the buttons
          //this would also be useful to add for other uses of the score counter widget
          child: const Text('Sync typed entries for auto'),
          onPressed:() {
            ScoutingAppState.autoAmpScored = int.parse(ScoutingAppState.autoAmpController.text);
            ScoutingAppState.autoSpeakerScored = int.parse(ScoutingAppState.autoSpeakerController.text);
          },
        ),
        const SizedBox(height:8),
        CheckmarkButton(
          isChecked: ScoutingAppState.autoMobility,
          changeState: changeAutoMobility,
          checkboxTitle: 'Mobility',
          checkboxSubtitle: ''
        ),
        const SizedBox(height:8),
        //ground intake grid (everything below this point)
        const Text('Ground Intake'),
        const SizedBox(height:8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GroundIntakeButton(
              selected: ScoutingAppState.autoGroundIntake1,
              onPressed: (newValue) => setState(() => ScoutingAppState.autoGroundIntake1 = newValue)
            ),
            const SizedBox(width:8),
            GroundIntakeButton(
              selected: ScoutingAppState.autoGroundIntake2,
              onPressed: (newValue) => setState(() => ScoutingAppState.autoGroundIntake2 = newValue)
            ),
            const SizedBox(width:8),
            GroundIntakeButton(
              selected: ScoutingAppState.autoGroundIntake3,
              onPressed: (newValue) => setState(() => ScoutingAppState.autoGroundIntake3 = newValue)
            ),
          ]
        ),
        const SizedBox(height:8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GroundIntakeButton(
              selected: ScoutingAppState.autoGroundIntake4,
              onPressed: (newValue) => setState(() => ScoutingAppState.autoGroundIntake4 = newValue)
            ),
            const SizedBox(width:8),
            GroundIntakeButton(
              selected: ScoutingAppState.autoGroundIntake5,
              onPressed: (newValue) => setState(() => ScoutingAppState.autoGroundIntake5 = newValue)
            ),
            const SizedBox(width:8),
            GroundIntakeButton(
              selected: ScoutingAppState.autoGroundIntake6,
              onPressed: (newValue) => setState(() => ScoutingAppState.autoGroundIntake6 = newValue)
            ),
          ]
        ),
        const SizedBox(height:8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GroundIntakeButton(
              selected: ScoutingAppState.autoGroundIntake7,
              onPressed: (newValue) => setState(() => ScoutingAppState.autoGroundIntake7 = newValue)
            ),
            const SizedBox(width:8),
            GroundIntakeButton(
              selected: ScoutingAppState.autoGroundIntake8,
              onPressed: (newValue) => setState(() => ScoutingAppState.autoGroundIntake8 = newValue)
            ),
            const SizedBox(width:8),
            GroundIntakeButton(
              selected: ScoutingAppState.autoGroundIntake9,
              onPressed: (newValue) => setState(() => ScoutingAppState.autoGroundIntake9 = newValue)
            ),
          ]
        ),
        const SizedBox(height:8),
        GroundIntakeButton(
          selected: ScoutingAppState.autoGroundIntake10,
          onPressed: (newValue) => setState(() => ScoutingAppState.autoGroundIntake10 = newValue)
        ),
        const SizedBox(height:8),
        GroundIntakeButton(
          selected: ScoutingAppState.autoGroundIntake11,
          onPressed: (newValue) => setState(() => ScoutingAppState.autoGroundIntake11 = newValue)
        ),
      ],
    );
  }
}