  import 'package:flutter/material.dart';

class ScoreCounter extends StatelessWidget {
  final int scoreCounter;
  final Function changeValue;
  final TextEditingController scoreCounterController;

  const ScoreCounter({
    super.key,  
    required this.scoreCounter,
    required this.changeValue,
    required this.scoreCounterController
    });  

  @override
  Widget build(BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton.icon(//adds button to increment score
            onPressed: () {
              changeValue(-1);
            },
            icon: const Icon(Icons.minimize),
            label: const Text('')
          ),
          SizedBox(
            width: 50,
            child: TextFormField(controller: scoreCounterController)//adds text field
          ),
          /*Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('$scoreCounter')
          ),*/
          ElevatedButton.icon(//adds button to increment score
            onPressed: () {
              changeValue(1);
            },
            icon: const Icon(Icons.add),
            label: const Text('')
          ),
        ]
      );
  } 
}
