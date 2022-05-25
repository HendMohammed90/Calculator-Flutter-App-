import 'package:flutter/material.dart';

class ReusebleCard extends StatelessWidget {
  final Color color;
  Widget card;
  final Function tapFunction;
  ReusebleCard({this.color, this.card, this.tapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapFunction,
      child: Container(
        child: card,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
