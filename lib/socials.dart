import 'package:flutter/material.dart';
class Socials extends StatelessWidget {
  Socials({this.icons, this.colour});
  final IconData icons;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 3.0,
            spreadRadius: 1.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
        //color: Colors.grey,
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Icon(
          icons,
          color: colour,
        ),
      ),
    );
  }
}

