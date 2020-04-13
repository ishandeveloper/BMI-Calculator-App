import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardIconContent extends StatelessWidget {
  const CardIconContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.mars,
            size: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'MALE',
            style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
          )
        ],
      ),
    );
  }
}
