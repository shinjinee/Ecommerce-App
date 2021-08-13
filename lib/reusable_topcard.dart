import 'package:flutter/material.dart';

class Reusable_TopCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
        ),
      ),
      elevation: 10,
      color: Colors.white,
      child: Container(
          width: double.infinity,

          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 60.0),
              child: Text(
                'Shopping              ',
                style: TextStyle(
                  color: Colors.blue.shade600,
                  fontSize: 30.0,
                ),
              ),
            ),
          )),
    );
  }
}
