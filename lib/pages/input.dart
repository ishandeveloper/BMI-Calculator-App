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
                BMICard(
                  colour: Color(0xFF1D1E33),
                ),
                BMICard(
                  colour: Color(0xFF1D1E33),
                ),
              ],
            ),
          ),
          BMICard(
            colour: Color(0xFF1D1E33),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                BMICard(
                  colour: Color(0xFF1D1E33),
                ),
                BMICard(
                  colour: Color(0xFF1D1E33),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.yellow[500],
                    height: MediaQuery.of(context).size.height * 0.095,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
