import 'package:flutter/material.dart';
import 'back_button.dart';

final TextStyle txtStyle =
    TextStyle(color: Colors.grey.shade600, fontSize: 15.0);
final TextStyle txtStyle2 =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

class OrderTracking extends StatefulWidget {
  @override
  _OrderTrackingState createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    'Order Tracking',
                    style: txtStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 40, bottom: 40),
              child: Text(
                'Order details',
                style: txtStyle2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/product.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '    Classic Salty Lays\n',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '    Rs. 85',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
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
                            padding: const EdgeInsets.only(
                                left: 5, top: 5, bottom: 5),
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Text('Order ID: 1111111111111'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Date_Time(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Circle_Line(),
                  ),
                  Location_status(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Date_Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              '01/02/21',
              style: txtStyle,
            ),
            Text('01:30\n\n\n'),
            Text(
              '03/02/21',
              style: txtStyle,
            ),
            Text('02:15\n\n\n'),
            Text(
              '06/02/21',
              style: txtStyle,
            ),
            Text('11:30\n\n\n'),
            Text(
              '06/02/21',
              style: txtStyle,
            ),
            Text('12:30'),
          ],
        ),

      ],
    );
  }
}

class Circle_Line extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 2),
            shape: BoxShape.circle,
            // color: Colors.green,
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
          ),
        ),
        Container(
          color: Colors.green,
          child: SizedBox(
            width: 2,
            height: 60,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 2),
            shape: BoxShape.circle,
            // color: Colors.green,
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
          ),
        ),
        Container(
          color: Colors.green,
          child: SizedBox(
            width: 2,
            height: 60,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 2),
            shape: BoxShape.circle,
            // color: Colors.green,
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
          ),
        ),
        Container(
          color: Colors.green,
          child: SizedBox(
            width: 2,
            height: 60,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
          ),
        ),
      ],
    );
  }
}

class Location_status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text('Order placed'),
            Text('Location\n\n\n',style: txtStyle,),
            Text('Order shipped'),
            Text('Location\n\n\n',style: txtStyle,),
            Text('Out for delivery'),
            Text('Location\n\n\n',style: txtStyle,),
            Text('Delivered'),
            Text('Location',style: txtStyle,),
          ],
        ),

      ],
    );
  }
}