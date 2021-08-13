import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/custom_button.dart';
import 'back_button.dart';
import 'text_block.dart';
import 'constants.dart';

class Order extends StatelessWidget {
  TextStyle txtStyle = TextStyle(color: Colors.white, fontSize: 16.0);
  TextStyle txtStyle2 = TextStyle(
      color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w300);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: BottomNavbar(
        //   idx: 3,
        // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      'My Orders',
                      style: txtStyle,
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                  ],
                ),
              ),
            ),
            TextBlock(
              text: 'Placed on Jul 31, 2020',
              colour: Colors.yellow.shade100,
              align: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Estimated Delivery on 1 Aug, 2020',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image(
                        image: AssetImage('assets/product.png'),
                      ),
                      Positioned(
                        top: -5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: kRadiuses,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12, right: 12, top: 2, bottom: 2),
                            child: Text(
                              '15% Off',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Classic Salty Lays   ',
                        style: txtStyle2,
                      ),
                      Row(
                        children: [
                          Text(
                            'Rs. 85',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            '  Rs. 55   ',
                            style: txtStyle2,
                          ),
                        ],
                      ),
                      Text(
                        'Order ID: 23456   ',
                        style: txtStyle2,
                      ),
                    ],
                  ),
                  Circle(
                    colour: Colors.blue.shade700,
                  ),
                  Container(
                    color: Colors.black,
                    child: SizedBox(
                      width: 20,
                      height: 2,
                    ),
                  ),
                  Circle(
                    colour: Colors.grey.shade300,
                  ),
                  Container(
                    color: Colors.black,
                    child: SizedBox(
                      width: 20,
                      height: 2,
                    ),
                  ),
                  Circle(
                    colour: Colors.grey.shade300,
                  ),
                  Container(
                    color: Colors.black,
                    child: SizedBox(
                      width: 20,
                      height: 2,
                    ),
                  ),
                  Circle(
                    colour: Colors.grey.shade300,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey.shade400,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Final amount paid',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '234/-',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 25, bottom: 25),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.blue.shade700,
                    size: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Order to be delivered to',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' H no. 29-90-90, Chandranagae,',
                        style: txtStyle2,
                      ),
                      Text(
                        ' Patna 207008',
                        style: txtStyle2,
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Icon(
                    Icons.edit,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey.shade300,
              child: SizedBox(
                height: 2,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40, top: 20),
              child: Custom_button(
                text: 'Cancel your Order',
                bgImage: AssetImage('assets/Rectangle 550.png'),
                textColour: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Circle extends StatelessWidget {
  Circle({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colour,
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
