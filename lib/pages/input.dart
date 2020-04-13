import 'package:bmi_calculator/widgets/customcard.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                BMICard(),
                BMICard()
              ],
            ),
          ),
          BMICard(),
          Expanded(
              child: Row(
            children: <Widget>[
              BMICard(),
              BMICard()
            ],
          )),
        ],
      ),
    );
  }
}

