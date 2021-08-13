import 'package:flutter/material.dart';
import 'back_button.dart';

TextStyle txtStyle =
    TextStyle(color: Colors.grey.shade700, fontSize: 16.0);

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Back_Button(),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Notifications',
                    style: txtStyle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage('assets/Icon material-feedback.png'),
                      size: 30,
                      color: Colors.blue.shade700,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Text(
                        'After clicking on wallet button on home screen the user enter in to the left side first screen and second screen appears after clicking the notification button on home screen.',
                      style: txtStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
