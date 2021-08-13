import 'package:flutter/material.dart';
import 'bottom_navbar.dart';

class Filters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink,
        // bottomNavigationBar: BottomNavbar(
        //   idx: 1,
        // ),
        body: Text('FILTER'),
      ),
    );
  }
}
