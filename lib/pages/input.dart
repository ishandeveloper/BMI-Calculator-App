import 'package:bmi_calculator/widgets/cardiconcontent.dart';
import 'package:bmi_calculator/widgets/customcard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // final cardColor=Color(0xFF1D1E33);
  final cardColor = Color(0xFF1D1E33);

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
                  colour: cardColor,
                  cardChild: CardIconContent(
                    cardicon: FontAwesomeIcons.mars,
                    cardtext: 'MALE',
                  ),
                ),
                BMICard(
                  colour: cardColor,
                  cardChild: CardIconContent(
                    cardicon: FontAwesomeIcons.female,
                    cardtext: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          BMICard(
            colour: cardColor,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                BMICard(
                  colour: cardColor,
                ),
                BMICard(
                  colour: cardColor,
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
                    child: Text(
                      'CALCULATE BMI',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
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
