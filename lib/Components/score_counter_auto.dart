import 'package:flutter/material.dart';

class ScoreCounterAuto extends StatelessWidget {
  final int scoreCounterAuto;
  final Function changeValueAuto;
  final TextEditingController scoreCounterControllerAuto;

  const ScoreCounterAuto({
    super.key,
    required this.scoreCounterAuto,
    required this.changeValueAuto,
    required this.scoreCounterControllerAuto,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      ElevatedButton.icon(
          //adds button to increment score
          onPressed: () {
            changeValueAuto(-1);
          },
          icon: const Icon(Icons.minimize),
          label: const Text('')),
      SizedBox(
          width: 50,
          child: TextFormField(
              controller: scoreCounterControllerAuto) //adds text field
          ),
      /*Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('$scoreCounter')
          ),*/
      ElevatedButton.icon(
          //adds button to increment score
          onPressed: () {
            changeValueAuto(1);
          },
          icon: const Icon(Icons.add),
          label: const Text('')),
    ]);
  }
}
