import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {

  TextBlock({@required this.text, this.colour=Colors.red, this.align=TextAlign.start});

  final String text;
  final Color colour;
  final align;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 2, right: 5, left: 5),
      child: Container(
        color: colour,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
          child: Text(
            text,
            textAlign: align,
          ),
        ),
      ),
    );
  }
}