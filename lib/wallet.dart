import 'package:flutter/material.dart';
import 'back_button.dart';
import 'bottom_navbar.dart';

class Wallet extends StatelessWidget {
  TextStyle txtStyle = TextStyle(color: Colors.white, fontSize: 16.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.blue.shade700,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Back_Button(
                      col: Colors.white,
                    ),
                    Text(
                      'My Wallet',
                      style: txtStyle,
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Available balance\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '0/-',
                    style: TextStyle(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey.shade400,
              child: SizedBox(
                width: double.infinity,
                height: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Earn Shopper Cash by referring with a friend',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '\nHow it works\n',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                  Roww(
                    icon: AssetImage('assets/pointer.png'),
                  ),
                  Roww(
                    icon: AssetImage('assets/share.png'),
                  ),
                  Roww(
                    icon: AssetImage('assets/wallet.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Roww extends StatelessWidget {
  Roww({@required this.icon});

  final AssetImage icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          ImageIcon(
            icon,
            color: Colors.orange.shade800,
            size: 35,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                'After clicking on wallet button on home screen the user enter in to the left side',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
