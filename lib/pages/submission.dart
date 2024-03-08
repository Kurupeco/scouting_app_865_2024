import 'package:flutter/material.dart';
import 'package:scouting_app_865_2024/util/gsheets.dart';
import 'package:scouting_app_865_2024/util/state.dart';
import 'package:scouting_app_865_2024/util/themes.dart';

class SubmissionPage extends StatelessWidget {
  const SubmissionPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Submission',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: lightTheme.colorScheme.primary,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Comments'),
            SizedBox(
                width: 350,
                child: TextFormField(
                    controller: ScoutingAppState.commentsController,
                    keyboardType: TextInputType.text)),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: ElevatedButton(
                    onPressed: () {
                      GSheetsUtil.addRow(ScoutingAppState.getData());
                    },
                    child: const Text("Send Data")),
              ),
            ),
          ]),
    );
  }
}
