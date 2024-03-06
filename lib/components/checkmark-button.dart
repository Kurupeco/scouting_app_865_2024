import 'package:flutter/material.dart';

class checkmarkbutton extends StatefulWidget {
  final String buttons;
  const checkmarkbutton({super.key, required this.buttons});

  

  @override
  State<checkmarkbutton> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<checkmarkbutton> {
  bool? _isChecked = false;

  void _incrementCounter() {
    setState(() {});
  }

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('please work'),
        centerTitle: true,
      ),
      body: Stack(
        //This is the checkmark box code
        children: [
          Center(
            child: CheckboxListTile(
              title: const Text('Checkbox List Title'),
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue;
                });
              },
              activeColor: const Color.fromARGB(255, 6, 98, 219),
              checkColor: const Color.fromARGB(255, 255, 255, 255),
              subtitle: const Text(
                  'This subtile can be used to describe what the button is used for'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
        ],
     ),
    );
  }
}