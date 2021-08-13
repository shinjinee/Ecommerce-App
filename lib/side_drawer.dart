import 'package:flutter/material.dart';
import 'package:shopping/cart.dart';
import 'package:shopping/orders.dart';
import 'notifications.dart';
import 'wallet.dart';
import 'search.dart';
import 'orders.dart';
import 'privacy_policy.dart';
import 'cart.dart';
import 'order_tracking.dart';
import 'settings.dart';
import 'change_password.dart';
import 'logout.dart';
import 'user_feedback.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: ImageIcon(
                      AssetImage('assets/Group 323.png'),
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jennifer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'San Francisco, CA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Rectangle 550.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          DrawerItem(
            icon: AssetImage('assets/Path 102.png'),
            label: 'HOME',
            gesture: () {
              Navigator.pop(context);
            },
          ),
          DrawerItem(
            icon: AssetImage('assets/Path 103.png'),
            label: 'EXPLORE',
          ),
          DrawerItem(
            icon: AssetImage('assets/Path 50.png'),
            label: 'WALLET',
            gesture: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Wallet()),
              );
            },
          ),
          DrawerItem(
            icon: AssetImage('assets/Icon ionic-md-notifications.png'),
            label: 'NOTIFICATIONS',
            gesture: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notifications()),
              );
            },
          ),
          DrawerItem(
            icon: AssetImage('assets/Path 148.png'),
            label: 'YOUR ORDERS',
            gesture: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Order()),
              );
            },
          ),
          DrawerItem(
            icon: AssetImage('assets/Icon feather-shopping-cart.png'),
            label: 'CART',
            gesture: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
            },
          ),
          DrawerItem(
            icon: AssetImage('assets/Path 102.png'),
            label: 'PRIVACY POLICY',
            gesture: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPolicy()),
              );
            },
          ),
          DrawerItem(
            icon: AssetImage('assets/Path 104.png'),
            label: 'SETTINGS',
            gesture: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.search,
              color: Colors.black,
            ),
            title: Text('SEARCH'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Search()),
              );
            },
          ),
          DrawerItem(
            icon: AssetImage('assets/Path 102.png'),
            label: 'ORDER TRACKING',
            iconColor: Colors.transparent,
            gesture: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderTracking()),
              );
            },
          ),
          DrawerItem(
            icon: AssetImage('assets/Path 102.png'),
            label: 'CHANGE PASSWORD',
            iconColor: Colors.transparent,
            gesture: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangePassword()),
              );
            },
          ),
          DrawerItem(
            icon: AssetImage('assets/Path 102.png'),
            label: 'LOGOUT',
            iconColor: Colors.transparent,
            gesture: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Logout()),
              );
            },
          ),
          DrawerItem(
            icon: AssetImage('assets/Path 102.png'),
            label: 'FEEDBACK',
            iconColor: Colors.transparent,
            gesture: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserFeedback()),
              );
            },
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageIcon(
                  AssetImage('assets/Path 1.png'),
                  color: Colors.black,
                ),
                ImageIcon(
                  AssetImage('assets/Path 3.png'),
                  color: Colors.black,
                ),
                ImageIcon(
                  AssetImage('assets/Path 2.png'),
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  DrawerItem(
      {@required this.icon,
      @required this.label,
      this.iconColor = Colors.black,
      this.gesture});

  final AssetImage icon;
  final String label;
  final Color iconColor;
  final gesture;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ImageIcon(
        icon,
        color: iconColor,
      ),
      title: Text(label),
      onTap: gesture,
    );
  }
}
