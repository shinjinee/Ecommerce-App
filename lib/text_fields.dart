import 'package:flutter/material.dart';
import 'constants.dart';

class Textfields extends StatelessWidget {
  Textfields({@required this.control, this.obs=false});

  final TextEditingController control;
  final bool obs;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: control,
      obscureText: obs,
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderRadius: kRadiuses,
        ),
      ),
    );
  }
}
