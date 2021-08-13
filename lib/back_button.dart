import 'package:flutter/material.dart';

class Back_Button extends StatelessWidget {

  Back_Button({this.col=Colors.black});

  final Color col;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: ImageIcon(
        AssetImage('assets/Icon feather-arrow-right.png'),
        color: col,
      ),
    );
  }
}
