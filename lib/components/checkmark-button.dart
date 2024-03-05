import 'package:flutter/material.dart';

class CheckmarkButton extends /*StatefulWidget*/StatelessWidget {
  final bool? isChecked;
  final void Function(bool?)? changeState;
  final String checkboxTitle;
  final String  checkboxSubtitle;

  const CheckmarkButton({
    super.key,
    required this.isChecked,
    required this.changeState,
    required this.checkboxTitle,
    required this.checkboxSubtitle
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Center(
            /*child: SizedBox(
              width: 50,*/
            child: CheckboxListTile(
              title: Text(checkboxTitle),
              value: isChecked,
              onChanged: changeState,/*(bool? newValue) {
                setState(() {
                  isChecked = newValue;
                });
              },*/
              activeColor: const Color.fromARGB(255, 6, 98, 219),
              checkColor: const Color.fromARGB(255, 255, 255, 255),
              subtitle: Text(checkboxSubtitle),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          /*),*/
          ),
        ],
    );
  }
}

/*class _MyHomePageState extends State<CheckmarkButton> {
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
}*/