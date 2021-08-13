import 'package:flutter/material.dart';
import 'constants.dart';

const FontWeight wt = FontWeight.w400;
const double sz = 17.0;

class Custom_button extends StatelessWidget {
  Custom_button({@required this.text, @required this.bgImage, this.gesture, this.textColour=Colors.black});

  final String text;
  final Color textColour;
  final AssetImage bgImage;
  final Function gesture;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gesture,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: kRadiuses,
          image: DecorationImage(
            image: bgImage,
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: wt,
              fontSize: sz,
              color: textColour,
            ),
          ),
        ), // button text
      ),
    );
  }
}
