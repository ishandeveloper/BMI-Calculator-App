import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/customcard.dart';
import 'package:flutter/material.dart';

class AnalysisPage extends StatelessWidget {
  final double bmiValue;

  AnalysisPage({this.bmiValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'BMI CALCULATOR',
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                'by ishandeveloper',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w200,
                    fontSize: 11),
              )
            ],
          ),
          elevation: 0,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Icon(Icons.info),
              ),
            )
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 10,
              child: Container(
                margin: const EdgeInsets.all(30),
                child: BMICard(
                  colour: activeCardColor,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Your BMI Index is',style:cardtextstyle,textAlign: TextAlign.center,),
                      Text(bmiValue.toString(),style:boldCardHeadings.copyWith(fontSize: 72),textAlign: TextAlign.center,),
                      Text(bmiValue>=19?"You're normal":"You're obese",style: cardtextstyle,textAlign: TextAlign.center,)
                    ],
                    
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: MaterialButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.replay,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'CALCULATE ANOTHER',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.yellow[500],
                    height: MediaQuery.of(context).size.height * 0.095,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
