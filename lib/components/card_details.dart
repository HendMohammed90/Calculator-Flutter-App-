import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  final Color textColor;
  final IconData iconSympol;
  final String lapel;

  CardDetails(
      {@required this.textColor,
      @required this.iconSympol,
      @required this.lapel});

  // final lapelStyle = TextStyle(
  //   color: textColor,
  //   fontSize: 30.0,
  //   fontWeight: FontWeight.bold,
  // );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconSympol,
          size: 80,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          lapel,
          style: TextStyle(
            color: textColor,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
