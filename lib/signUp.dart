import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/signIn.dart';
import 'custom_button.dart';
import 'reusable_topcard.dart';
import 'text_fields.dart';
import 'constants.dart';
import 'socials.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'authentication_service.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Reusable_TopCard(),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 3.0),
                      child: Text(
                        'Email Id',
                        style: TextStyle(
                          fontSize: kTextFieldDef,
                        ),
                      ),
                    ),
                    Textfields(control: emailController),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 3.0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: kTextFieldDef,
                        ),
                      ),
                    ),
                    Textfields(
                      control: passwordController,
                      obs: true,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 3.0),
                      child: Text(
                        'Re-enter Password',
                        style: TextStyle(
                          fontSize: kTextFieldDef,
                        ),
                      ),
                    ),
                    Textfields(
                      control: repasswordController,
                      obs: true,
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Custom_button(
                      text: 'Signup',
                      bgImage: AssetImage('assets/Rectangle 3.png'),
                      textColour: Colors.white,
                      gesture: () {
                        if (passwordController.text ==
                                repasswordController.text) {
                          context.read<AuthenticationService>().signUp(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                              );
                          Navigator.popUntil(context, ModalRoute.withName("/"));
                        }
                      },
                    ),
                    Image(
                      image: AssetImage('assets/index.jpeg'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Socials(
                          icons: FontAwesomeIcons.facebookF,
                          colour: Colors.blue.shade800,
                        ),
                        Socials(
                          icons: FontAwesomeIcons.google,
                        ),
                        Socials(
                          icons: FontAwesomeIcons.twitter,
                          colour: Colors.blue.shade500,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Custom_button(
                      text: 'Signin',
                      bgImage: AssetImage('assets/Rectangle 550.png'),
                      gesture: () {
                        Navigator.popUntil(context, ModalRoute.withName("/"));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignIn(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
