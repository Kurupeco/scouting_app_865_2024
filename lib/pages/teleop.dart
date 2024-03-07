import 'package:flutter/material.dart';
import 'package:flutter_application_2/Components/checkmark-button.dart';
import 'package:flutter_application_2/Components/score_counter_teleop.dart';
import 'package:flutter_application_2/state.dart';

class TeleopPage extends StatefulWidget {
  const TeleopPage({Key? key}) : super(key: key);

  @override
  _TeleopPageState createState() => _TeleopPageState();
}

class _TeleopPageState extends State<TeleopPage> {
  void changeTeleopDefence(bool? newValue) {
    setState(() {
      ScoutingAppState.teleopDefence = newValue;
    });
  }

  void changeTeleopFoul(bool? newValue) {
    setState(() {
      ScoutingAppState.teleopFoul = newValue;
    });
  }

  void changeTeleopTechFoul(bool? newValue) {
    setState(() {
      ScoutingAppState.teleopTechFoul = newValue;
    });
  }

  void changeTeleopSpeakerScore(int incValue) {
    ScoutingAppState.incrementTeleopSpeaker(incValue);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Amp:'),
        const SizedBox(height: 8),
        ScoreCounterTeleop(
          scoreCounterTeleop: ScoutingAppState.teleopAmpScored,
          changeValueTeleop: ScoutingAppState.incrementTeleopAmp,
          scoreCounterControllerTeleop: ScoutingAppState.teleopAmpController,
        ),
        const SizedBox(height: 8),
        const Text('Speaker:'),
        const SizedBox(height: 8),
        ScoreCounterTeleop(
          scoreCounterTeleop: ScoutingAppState.teleopSpeakerScored,
          changeValueTeleop: changeTeleopSpeakerScore,
          scoreCounterControllerTeleop:
              ScoutingAppState.teleopSpeakerController,
        ),
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
        //Defence checkmark button
        const SizedBox(height: 8),
        CheckmarkButton(
            isChecked: ScoutingAppState.teleopDefence,
            changeState: changeTeleopDefence,
            checkboxTitle: 'Defence',
            checkboxSubtitle: 'Does the robot play defence during the match?'),
        const SizedBox(height: 8),

        //Foul checkmark button
        const SizedBox(height: 8),
        CheckmarkButton(
            isChecked: ScoutingAppState.teleopFoul,
            changeState: changeTeleopFoul,
            checkboxTitle: 'Foul',
            checkboxSubtitle: 'Did the robot cause a foul during the match?'),
        const SizedBox(height: 8),

        //Tech Foul checkmark button
        const SizedBox(height: 8),
        CheckmarkButton(
            isChecked: ScoutingAppState.teleopTechFoul,
            changeState: changeTeleopTechFoul,
            checkboxTitle: 'Tech Foul',
            checkboxSubtitle:
                'Did the robot cause a tech foul during the match?'),
        const SizedBox(height: 8),
      ],
    );
  }
}
