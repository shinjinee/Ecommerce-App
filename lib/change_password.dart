import 'package:flutter/material.dart';
import 'constants.dart';
import 'back_button.dart';
import 'custom_button.dart';

final TextStyle txtStyle =
    TextStyle(color: Colors.grey.shade700, fontSize: 16.0);

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController old_passwordController = TextEditingController();
  final TextEditingController new1_passwordController = TextEditingController();
  final TextEditingController new2_passwordController = TextEditingController();

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
                    'Change Password',
                    style: txtStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            PasswordField(
              controller: old_passwordController,
              hint: 'Old Password',
            ),
            PasswordField(
                controller: new1_passwordController,
                hint: 'New Password'),
            PasswordField(
                controller: new2_passwordController,
                hint: 'Retype new Password'),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
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

class PasswordField extends StatelessWidget {
  PasswordField({@required this.controller, @required this.hint});

  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
      child: TextField(
        controller: controller,
        obscureText: true,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.blue.shade700,
          ),
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: kRadiuses,
          ),
        ),
      ),
    );
  }
}
