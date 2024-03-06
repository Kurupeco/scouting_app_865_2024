import 'package:flutter/material.dart';

class radiobutton extends StatefulWidget {
  final String buttons;
  const radiobutton({Key? key, required this.buttons});

  

  @override
  State<radiobutton> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<radiobutton> {
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
          Positioned(
            left: 50,
            top: 50, // Adjust top position as needed
            child: Checkbox(
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue;
                });
              },
            ),
          ),
          Positioned(
            //This is the radio buttons code
            left: 50,
            top: 150,
            child: Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                  activeColor: const Color.fromARGB(255, 6, 98, 219),
                ),
                SizedBox(width: 10.0),
                Text('Radio 1'),
              ],
            ),
          ),
          Positioned(
            left: 50,
            top: 250,
            child: Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                  activeColor: const Color.fromARGB(255, 6, 98, 219),
                ),
                SizedBox(width: 10.0),
                Text('Radio 2'),
              ],
            ),
          ),
          Positioned(
            left: 50,
            top: 350,
            child: Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                  activeColor: const Color.fromARGB(255, 6, 98, 219),
                ),
                SizedBox(width: 10.0),
                Text('Radio 3'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
