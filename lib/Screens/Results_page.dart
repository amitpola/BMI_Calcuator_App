import 'package:bmi/Bottom_Button.dart';
import 'package:flutter/material.dart';
import '../Constants.dart';
import '../Resuable_card.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.interpritation,@required this.bmiResult,
    @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpritation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                  'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colours: kactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),

                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(interpritation,style: kBodyTextStyle,
                  textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
