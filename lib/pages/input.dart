import 'package:bmi_calculator/widgets/cardiconcontent.dart';
import 'package:bmi_calculator/widgets/customcard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BMICard(
                    pressed: () => setState(() {
                      selectedGender = Gender.male;
                    }),
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: CardIconContent(
                      cardicon: FontAwesomeIcons.mars,
                      cardtext: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: BMICard(
                    pressed: () => setState(() {
                      selectedGender = Gender.female;
                    }),
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: CardIconContent(
                      cardicon: FontAwesomeIcons.venus,
                      cardtext: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BMICard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT',style: cardtextstyle,)
                ],
              ),
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
