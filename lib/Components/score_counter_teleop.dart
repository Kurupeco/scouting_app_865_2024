import 'package:flutter/material.dart';

class ScoreCounterTeleop extends StatelessWidget {
  final int scoreCounterTeleop;
  final Function changeValueTeleop;
  final TextEditingController scoreCounterControllerTeleop;

  const ScoreCounterTeleop(
      {super.key,
      required this.scoreCounterTeleop,
      required this.changeValueTeleop,
      required this.scoreCounterControllerTeleop});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      ElevatedButton.icon(
          //adds button to increment score
          onPressed: () {
            changeValueTeleop(-1);
          },
          icon: const Icon(Icons.minimize),
          label: const Text('')),
      SizedBox(
          width: 50,
          child: TextFormField(
              controller: scoreCounterControllerTeleop) //adds text field
          ),
      /*Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('$scoreCounter')
          ),*/
      ElevatedButton.icon(
          //adds button to increment score
          onPressed: () {
            changeValueTeleop(1);
          },
          icon: const Icon(Icons.add),
          label: const Text('')),
    ]);
  }
}
