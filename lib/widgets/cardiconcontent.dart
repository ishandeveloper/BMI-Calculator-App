import 'package:flutter/material.dart';

class CardIconContent extends StatelessWidget {
  // const CardIconContent({
  //   Key key,
  // }) : super(key: key);

  final String cardtext;
  final IconData cardicon;

  CardIconContent({this.cardicon,@required this.cardtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardicon,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          cardtext,
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
