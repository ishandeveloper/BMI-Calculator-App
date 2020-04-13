import 'package:flutter/material.dart';

class BMICard extends StatelessWidget {
  // const BMICard({
  //   Key key,
  // }) : super(key: key);
  BMICard({this.colour});
  final Color colour;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
