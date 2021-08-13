import 'package:flutter/material.dart';
import 'back_button.dart';
import 'custom_button.dart';

final TextStyle txtStyle =
    TextStyle(color: Colors.grey.shade700, fontSize: 16.0);

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Back_Button(),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Privacy Policy',
                        style: txtStyle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Expanded(
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Expanded(
                      child: Text(
                        'After clicking on wallet button on home screen the user enter in to the left side first screen and second screen appears after clicking the notification button on home screen. After clicking on wallet button on home screen the user enter in to the left side first screen and second screen appears after clicking the notification button on home screen.',
                        style: txtStyle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 50, bottom: 10),
                    child: Custom_button(
                      text: 'Accept',
                      bgImage: AssetImage('assets/Rectangle 3.png'),
                      textColour: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 50),
                    child: Custom_button(
                      text: 'Decline',
                      bgImage: AssetImage('assets/Rectangle 1677.png'),
                    ),
                  ),
                ],
              ),
            ),
        ),
        ),
    );
  }
}
