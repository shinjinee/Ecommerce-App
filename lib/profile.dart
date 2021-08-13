import 'package:flutter/material.dart';
import 'bottom_navbar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        // bottomNavigationBar: BottomNavbar(
        //   idx: 4,
        // ),
        body: Text('PROFILE'),
      ),
    );
  }
}
