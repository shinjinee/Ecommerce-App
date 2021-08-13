import 'package:flutter/material.dart';
import 'back_button.dart';
import 'text_block.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: BottomNavbar(
        //   idx: 2,
        // ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Back_Button(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              TextBlock(
                text: 'Banana',
                colour: Colors.lightBlueAccent.withOpacity(0.1),
              ),
              TextBlock(
                text: 'IPhone',
                colour: Colors.lightBlueAccent.withOpacity(0.1),
              ),
              TextBlock(
                text: 'Trousers',
                colour: Colors.lightBlueAccent.withOpacity(0.1),
              ),
              TextBlock(
                text: 'steel bowls',
                colour: Colors.lightBlueAccent.withOpacity(0.1),
              ),
              SizedBox(
                height: 10,
              ),
              TextBlock2(
                text: 'Excepteur sint occaecat',
              ),
              Container(
                color: Colors.grey.shade600,
                child: SizedBox(
                  width: double.infinity,
                  height: 1,
                ),
              ),
              TextBlock2(
                text: 'Cupidatat non',
              ),
              Container(
                color: Colors.grey.shade600,
                child: SizedBox(
                  width: double.infinity,
                  height: 1,
                ),
              ),
              TextBlock2(
                text: 'Excepteur sint occaecat',
              ),
              Container(
                color: Colors.grey.shade600,
                child: SizedBox(
                  width: double.infinity,
                  height: 1,
                ),
              ),
              TextBlock2(
                text: 'Cupidatat non',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextBlock2 extends StatelessWidget {

  TextBlock2({@required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Icon(Icons.search, color: Colors.grey,),
        ],
      ),
    );
  }
}
