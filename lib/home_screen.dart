import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'category_card.dart';
import 'side_drawer.dart';
import 'bottom_navbar.dart';
import 'search.dart';
import 'profile.dart';
import 'filters.dart';
import 'orders.dart';

const String text1 = 'Welcome, Jen';
const String text2 =
    'Explore wide varieties of grocery, fresh fruits and vegetables, electronic appliances, kitchen sets, gardening sets and much more';

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Filters(),
    Search(),
    Order(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,

        bottomNavigationBar:  BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedFontSize: 0,
          unselectedFontSize: 0,

          type: BottomNavigationBarType.fixed,

          items: BottomNavbarItems.items,
        ),
        // bottomNavigationBar: BottomNavbar(),
        drawer: SideDrawer(),
        body: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            elevation: 10,
            color: Colors.blue.withOpacity(0.8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage(
                                'assets/Icon feather-shopping-cart.png'),
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () => _scaffoldKey.currentState.openDrawer(),
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ImageIcon(
                    AssetImage('assets/Rectangle 4.png'),
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 60, top: 8, bottom: 20),
                    child: Text(
                      text2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60, bottom: 5),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Search()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: kRadiuses,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey.shade500,
                                size: 16,
                              ),
                              Text(
                                '   search over 1500 products',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                ),
                image: new DecorationImage(
                  image: AssetImage("assets/Rectangle 134.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 60),
                  child: Text(
                    'Grab the best deals',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
          MidTitle(title: 'Categories'),
          SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              CategoryCard(
                cardBG: AssetImage('assets/Rectangle 12.png'),
                img: AssetImage('assets/Rectangle 13.png'),
                category: 'Fruits',
                desc: 'Fresh fruits and vegetables available',
                qty: '40',
                top: -25,
              ),
              CategoryCard(
                cardBG: AssetImage('assets/Rectangle 14.png'),
                img: AssetImage('assets/Rectangle 15.png'),
                category: 'Shoes',
                desc: 'Branded shoes and flips available',
                qty: '400',
                top: -30,
              ),
              CategoryCard(
                cardBG: AssetImage('assets/Rectangle 16.png'),
                img: AssetImage('assets/Rectangle 17.png'),
                category: 'Electronics',
                font: 14,
                desc: 'Laptops, mobile phones & more..',
                qty: '1500',
                top: -25,
              ),
            ],
          ),
          MidTitle(title: 'Today\'s deals'),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image(
                    image: AssetImage('assets/Rectangle 134.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image(
                    image: AssetImage('assets/Rectangle 134.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MidTitle extends StatelessWidget {
  MidTitle({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Row(
            children: [
              Text(
                'View them  ',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              ImageIcon(
                AssetImage('assets/Icon feather-arrow-left.png'),
                size: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}