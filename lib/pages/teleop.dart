import 'package:flutter/material.dart';
import 'package:flutter_application_2/Components/amplified-button.dart';
import 'package:flutter_application_2/Components/score_counter_teleop.dart';
import 'package:flutter_application_2/state.dart';

class TeleopPage extends StatefulWidget {
  const TeleopPage({Key? key}) : super(key: key);

  @override
  _TeleopPageState createState() => _TeleopPageState();
}

class _TeleopPageState extends State<TeleopPage> {
  bool isAmplified = false;

  void changeTeleopMobility(bool? newValue) {
    setState(() {
      ScoutingAppState.teleopMobility = newValue;
    });
  }

  void changeTeleopSpeakerScore(int incValue) {
    ScoutingAppState.incrementTeleopSpeaker(incValue, isAmplified);
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
        const Text('Speaker'),
        const SizedBox(height: 8),
        ScoreCounterTeleop(
          scoreCounterTeleop: ScoutingAppState.teleopSpeakerScored,
          changeValueTeleop: changeTeleopSpeakerScore,
          scoreCounterControllerTeleop: ScoutingAppState.teleopSpeakerController,
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          //when pressed, updates the value for the auto amp and speaker variables to match the text
          //used when the number is changed by typing rather then with the buttons
          //this would also be useful to add for other uses of the score counter widget
          child: const Text('Sync typed entries for teleop'),
          onPressed: () {
            ScoutingAppState.teleopAmpScored = int.parse(ScoutingAppState.teleopAmpController.text);
            ScoutingAppState.teleopSpeakerScored = int.parse(ScoutingAppState.teleopSpeakerController.text);
          },
        ),
        const SizedBox(height: 8),
        AmplifiedButton(
          isChecked: isAmplified,
          changeState: (newValue) {
            setState(() {
              isAmplified = newValue ?? false;
            });
          },
          ampbuttonTitle: 'Amplify',
          ampbuttonSubtitle: '',
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
