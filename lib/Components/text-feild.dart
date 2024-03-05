import 'package:flutter/material.dart';



class CustomTextField extends StatefulWidget {

  final String labelText;



  const CustomTextField({Key? key, required this.labelText}) : super(key: key);



  @override

  _CustomTextFieldState createState() => _CustomTextFieldState();

}



class _CustomTextFieldState extends State<CustomTextField> {

  String userInput = '';



  @override

  Widget build(BuildContext context) {

    return Column(children: [

      TextFormField(

        decoration: InputDecoration(

          border: UnderlineInputBorder(),

          labelText: widget.labelText,

        ),

        onChanged: (value) {

          setState(() {

            userInput = value;

          });

        },

      ),

    ]);

  }

}