import 'package:flutter/material.dart';

class BMICard extends StatelessWidget {
  // const BMICard({
  //   Key key,
  // }) : super(key: key);
  BMICard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
