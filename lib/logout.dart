import 'package:flutter/material.dart';
import 'back_button.dart';
import 'custom_button.dart';
import 'authentication_service.dart';
import 'package:provider/provider.dart';

final TextStyle txtStyle =
TextStyle(color: Colors.grey.shade700, fontSize: 16.0);

class Logout extends StatefulWidget {
  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
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
                      'Log out',
                      style: txtStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text('Are you sure you want to logout?\n', style: txtStyle,),
              Text('We can\'t notify you of new', style: txtStyle,),
              Text('mathes if you do', style: txtStyle,),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23, top: 40,),
                child: Custom_button(
                  text: 'Log out',
                  textColour: Colors.white,
                  bgImage: AssetImage('assets/Rectangle 3.png'),
                  gesture: (){
                    context.read<AuthenticationService>().signOut();
                    Navigator.popUntil(context, ModalRoute.withName("/"));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23, top: 40,),
                child: Custom_button(
                  text: 'Cancel',
                  bgImage: AssetImage('assets/Rectangle 1677.png'),
                  gesture: (){
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ));
  }
}