import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  CategoryCard({@required this.cardBG, @required this.img, @required this.category, @required this.desc, @required this.qty, @required this.top, this.font=18});

  final AssetImage cardBG;
  final AssetImage img;
  final String category;
  final String desc;
  final String qty;
  final double font;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2, right: 2),
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: cardBG,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 15, left: 10, right: 10),
                  child: Column(
                    children: [
                      Text(
                        category,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: font,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5),
                        child: Text(
                          desc,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Text(
                        qty,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'items',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: top,
            child: Image(
              image: img,
            ),
          ),
        ],
      ),
    );
  }
}