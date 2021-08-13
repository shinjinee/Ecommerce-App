import 'package:flutter/material.dart';
import 'back_button.dart';
import 'custom_button.dart';

final TextStyle txtStyle =
    TextStyle(color: Colors.grey.shade700, fontSize: 16.0);
TextStyle txtStyle2 =
    TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w300);

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
              child: Row(
                children: [
                  Back_Button(),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'My cart',
                    style: txtStyle,
                  ),
                ],
              ),
            ),
            Product(),
            Product(),
            Product(),
            Product(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
              child: Custom_button(
                text: 'Keep Shopping',
                bgImage: AssetImage('assets/Rectangle 3.png'),
                textColour: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 50),
              child: Custom_button(
                text: 'Checkout',
                bgImage: AssetImage('assets/Rectangle 1677.png'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Product extends StatelessWidget {
  const Product({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage('assets/product.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Classic Salty Lays\n',
                    style: txtStyle2,
                  ),
                  Text(
                    'Rs. 85',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 80),
                            child: Text(
                              "200 g",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 80),
                            child: Text(
                              "Qty: 1",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Rectangle 1669.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.save,
                      color: Colors.white,
                    ),
                    Text(
                      '  Save for later',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ), // button text
              ),
            ),
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Rectangle 1670.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    Text(
                      '  Remove',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ), // button text
              ),
            ),
          ],
        ),
      ],
    );
  }
}
