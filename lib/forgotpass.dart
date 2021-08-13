import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/signIn.dart';
import 'back_button.dart';
import 'custom_button.dart';
import 'package:flutter/services.dart';

final TextStyle txtStyle =
    TextStyle(color: Colors.grey.shade700, fontSize: 15.0);

class ForgotPass extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Back_Button(
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Forgot Password',
                    style: txtStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'Enter your mail address below',
                style: txtStyle,
              ),
              Text(
                'to reset password',
                style: txtStyle,
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Custom_button(
                gesture: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Verify()),
                  );
                },
                text: 'Reset Password',
                bgImage: AssetImage('assets/Rectangle 3.png'),
                textColour: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Verify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Text(
                    'Verification Code',
                    style: txtStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'Enter your verification code we just',
                style: txtStyle,
              ),
              Text(
                'sent you on your email address',
                style: txtStyle,
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  PinField(
                    action: TextInputAction.next,
                  ),
                  PinField(
                    action: TextInputAction.next,
                  ),
                  PinField(
                    action: TextInputAction.next,
                  ),
                  PinField(
                    action: TextInputAction.done,
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Custom_button(
                text: 'Verify',
                bgImage: AssetImage('assets/Rectangle 3.png'),
                textColour: Colors.white,
                gesture: (){
                  Navigator.popUntil(context, ModalRoute.withName("/signin"));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PinField extends StatelessWidget {
  PinField({@required this.action});

  final action;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: new TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
          ),
          textInputAction: action,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
          ],
        ),
      ),
    );
  }
}
