import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/signUp.dart';
import 'custom_button.dart';
import 'constants.dart';
import 'reusable_topcard.dart';
import 'text_fields.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'socials.dart';
import 'firstscreen.dart';
import 'forgotpass.dart';
import 'package:provider/provider.dart';
import 'authentication_service.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 5.0),
                      child: Text(
                        'Email Id',
                        style: TextStyle(
                          fontSize: kTextFieldDef,
                        ),
                      ),
                    ),
                    Textfields(control: emailController),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 5.0),
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
                      height: 50.0,
                    ),
                    Custom_button(
                      text: 'Signin',
                      bgImage: AssetImage('assets/Rectangle 3.png'),
                      textColour: Colors.white,
                      gesture: () {
                        context.read<AuthenticationService>().signIn(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                            );
                        Navigator.popUntil(context, ModalRoute.withName("/"));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPass()),
                              );
                            },
                            child: Text(
                              'forgot password  ',
                              style: TextStyle(
                                fontSize: kTextFieldDef,
                              ),
                            ),
                          ),
                        ],
                      ),
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
                      height: 40.0,
                    ),
                    Custom_button(
                      text: 'Signup',
                      bgImage: AssetImage('assets/Rectangle 550.png'),
                      gesture: () {
                        Navigator.popUntil(context, ModalRoute.withName("/"));
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
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
