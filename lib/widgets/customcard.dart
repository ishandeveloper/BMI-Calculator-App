import 'package:flutter/material.dart';

class BMICard extends StatelessWidget {
  const BMICard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
