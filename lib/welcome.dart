import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'signIn.dart';
import 'signUp.dart';

const double kPadding = 50.0;
const double kBoxHeight = 200.0;
const double kWelcomeSize1 = 35.0;
const double kWelcomeSize2 = 17.0;

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple.shade200,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: kBoxHeight,
                  width: double.infinity,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: kWelcomeSize1,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                  width: double.infinity,
                ),
                Text(
                  'to the best Shopping',
                  style: TextStyle(
                    fontSize: kWelcomeSize2,
                  ),
                ),
                Text(
                  'app ever!',
                  style: TextStyle(
                    fontSize: kWelcomeSize2,
                  ),
                ),
                SizedBox(
                  height: kBoxHeight,
                  width: double.infinity,
                ),
                Custom_button(
                  text: 'SignUp',
                  bgImage: AssetImage('assets/Rectangle 3.png'),
                  gesture: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                        settings: RouteSettings(name: '/signup'),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 10.0,
                  width: double.infinity,
                ),
                Custom_button(
                  bgImage: AssetImage('assets/Rectangle 4.png'),
                  text: 'SignIn',
                  gesture: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                        settings: RouteSettings(name: '/signin'),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
