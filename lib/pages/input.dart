import 'package:bmi_calculator/widgets/cardiconcontent.dart';
import 'package:bmi_calculator/widgets/customcard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

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
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardColor=activeCardColor;
                        femaleCardColor=inactiveCardColor;
                      });
                    },
                    child: BMICard(
                      colour: maleCardColor,
                      cardChild: CardIconContent(
                        cardicon: FontAwesomeIcons.mars,
                        cardtext: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardColor=inactiveCardColor;
                        femaleCardColor=activeCardColor;
                      });
                    },
                                      child: BMICard(
                      colour: femaleCardColor,
                      cardChild: CardIconContent(
                        cardicon: FontAwesomeIcons.female,
                        cardtext: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BMICard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BMICard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: BMICard(
                    colour: activeCardColor,
                  ),
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
