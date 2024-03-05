//this is necessary because the checkmark button can't be put into a row
import 'package:flutter/material.dart';

class GroundIntakeButton extends StatelessWidget {
  final bool selected;
  final Function onPressed;

  const GroundIntakeButton({
    super.key,
    required this.selected,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: const Text(''),
      icon: Icon(selected?Icons.radio_button_on_outlined:Icons.radio_button_off_outlined),
      onPressed: () => onPressed(!selected)
    );
  }
}