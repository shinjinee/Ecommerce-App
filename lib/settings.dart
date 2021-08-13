import 'package:flutter/material.dart';
import 'back_button.dart';
import 'custom_button.dart';

final TextStyle txtStyle =
    TextStyle(color: Colors.grey.shade700, fontSize: 15.0);
final TextStyle txtStyle2 =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched1 = true;
  bool isSwitched2 = true;

  void isToggled1(bool value) {
    if (isSwitched1 == false)
      setState(() {
        isSwitched1 = true;
      });
    else
      setState(() {
        isSwitched1 = false;
      });
  }

  void isToggled2(bool value) {
    if (isSwitched2 == false)
      setState(() {
        isSwitched2 = true;
      });
    else
      setState(() {
        isSwitched2 = false;
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Settings',
                      style: txtStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                child: Text(
                  'Settings',
                  style: txtStyle2,
                ),
              ),
              Heading(
                heading: '  Account',
                icon: AssetImage('assets/Group 323.png'),
                sett1: 'Edit profile',
                sett2: 'Change password',
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                      child: Row(
                        children: [
                          ImageIcon(
                            AssetImage('assets/Icon ionic-md-notifications.png'),
                            color: Colors.blue.shade700,
                          ),
                          Text(
                            '  Notifications',
                            style: txtStyle2,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: SizedBox(
                        width: double.infinity,
                        height: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Notifications',
                            style: txtStyle,
                          ),
                          Switch(
                            activeColor: Colors.green,
                            inactiveThumbColor: Colors.red,
                            inactiveTrackColor: Colors.grey.shade300,
                            activeTrackColor: Colors.grey.shade300,
                            value: isSwitched1,
                            onChanged: isToggled1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'App notifications',
                            style: txtStyle,
                          ),
                          Switch(
                            activeColor: Colors.green,
                            inactiveThumbColor: Colors.red,
                            inactiveTrackColor: Colors.grey.shade300,
                            activeTrackColor: Colors.grey.shade300,
                            value: isSwitched2,
                            onChanged: isToggled2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Heading(
                heading: '  More',
                icon: AssetImage('assets/Icon material-more.png'),
                sett1: 'Language',
                sett2: 'Country',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 20),
                child: Custom_button(
                  text: 'Edit Profile',
                  bgImage: AssetImage('assets/Rectangle 3.png'),
                  textColour: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  Heading(
      {@required this.heading,
      @required this.icon,
      @required this.sett1,
      @required this.sett2});

  final String heading;
  final AssetImage icon;
  final String sett1;
  final String sett2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
            child: Row(
              children: [
                ImageIcon(
                  icon,
                  color: Colors.blue.shade700,
                ),
                Text(
                  heading,
                  style: txtStyle2,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            child: SizedBox(
              width: double.infinity,
              height: 1,
            ),
          ),
          Setting(sett: sett1),
          Setting(sett: sett2),
        ],
      ),
    );
  }
}

class Setting extends StatelessWidget {
  Setting({@required this.sett});

  final String sett;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sett,
            style: txtStyle,
          ),
          Icon_Setting(),
        ],
      ),
    );
  }
}

class Icon_Setting extends StatelessWidget {
  const Icon_Setting({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_forward_ios,
      color: Colors.grey.shade700,
      size: 20,
    );
  }
}
