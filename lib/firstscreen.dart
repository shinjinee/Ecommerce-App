import 'package:flutter/material.dart';
import 'package:shopping/custom_button.dart';
import 'home_screen.dart';

const String gibberish = 'If the user doesn’t have an account the user can sign up by clicking the Signup button in home page and user Enter into first screen If the user doesn’t have an account the user can sign up by clicking the Signup button in home page and user Enter into first screen';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/Group 1.png'),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                gibberish,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16.0),
              ),
              SizedBox(
                height: 50.0,
              ),
              Custom_button(
                text: 'Shop now',
                bgImage: AssetImage('assets/Rectangle 3.png'),
                textColour: Colors.white,
                gesture: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                      settings: RouteSettings(name: '/homescreen'),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'skip now',
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
