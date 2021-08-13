import 'package:flutter/material.dart';
import 'back_button.dart';
import 'custom_button.dart';

final TextStyle txtStyle =
    TextStyle(color: Colors.grey.shade700, fontSize: 16.0);

class UserFeedback extends StatefulWidget {
  @override
  _UserFeedbackState createState() => _UserFeedbackState();
}

class _UserFeedbackState extends State<UserFeedback> {

  final TextEditingController feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Back_Button(),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Feedback',
                    style: txtStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Text(
                'Your feedback matters to us!',
                style: txtStyle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ImageIcon(
                    AssetImage('assets/Icon ionic-md-sad.png'),
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ImageIcon(
                    AssetImage('assets/Icon ionic-md-happy.png'),
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ImageIcon(
                    AssetImage('assets/Icon feather-smile.png'),
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
              child: TextField(
                minLines: 5,
                maxLines: 5,
                controller: feedbackController,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40,),
              child: Custom_button(
                text: 'Submit',
                textColour: Colors.white,
                bgImage: AssetImage('assets/Rectangle 3.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
