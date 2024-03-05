import 'dart:async';
import 'package:flutter/material.dart';

class AmplifiedButton extends StatefulWidget {
  final bool? isChecked;
  final void Function(bool?)? changeState;
  final String ampbuttonTitle;
  final String ampbuttonSubtitle;

  const AmplifiedButton({
    Key? key,
    required this.isChecked,
    required this.changeState,
    required this.ampbuttonTitle,
    required this.ampbuttonSubtitle,
  }) : super(key: key);

  @override
  _AmplifiedButtonState createState() => _AmplifiedButtonState();
}

class _AmplifiedButtonState extends State<AmplifiedButton> {
  bool isButtonActive = true;
  int countdownSeconds = 10;
  late Timer _timer;

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdownSeconds == 0) {
        timer.cancel();
        setState(() {
          isButtonActive = true;
        });
        widget.changeState!(false);
      } else {
        setState(() {
          countdownSeconds--;
        });
      }
    });
  }

  void handleButtonPress() {
    if (!isButtonActive) return;
    setState(() {
      isButtonActive = false;
      countdownSeconds = 10;
    });
    widget.changeState!(true);
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: CheckboxListTile(
            title: Text(widget.ampbuttonTitle),
            value: widget.isChecked,
            onChanged: (newValue) {
              if (isButtonActive) {
                handleButtonPress();
              }
            },
            activeColor: const Color.fromARGB(255, 6, 98, 219),
            checkColor: const Color.fromARGB(255, 255, 255, 255),
            subtitle: Text(countdownSeconds > 0
                ? 'Score Aplified: $countdownSeconds seconds left'
                : widget.ampbuttonSubtitle),
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
      ],
    );
  }
}
