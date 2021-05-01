import 'package:flutter/material.dart';
class BmiCard extends StatelessWidget {
  final Widget cardChild;
  BmiCard({this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(7),
        margin: EdgeInsets.fromLTRB(8, 10, 8, 4),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Colors.grey[300],
            blurRadius: 40,
            // offset: Offset.fromDirection()
          )],
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: cardChild,
      ),
    );
  }
}