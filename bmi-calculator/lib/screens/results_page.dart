import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_Content.dart';
import '../components/reuseable_cart.dart';
import '../constants.dart';


class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text('Your Result',style: kTitleTextStyle,),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(),style: kResultTextStyle,textAlign: TextAlign.center),
                  Text(bmiResult,style: kBMITextStyle,textAlign: TextAlign.center),
                  Text(interpretation,style: kBodyTextStyle,textAlign: TextAlign.center),

                ],
              ),
            ),
          ),
          BottomButton(onPressed: () {
            Navigator.pop(context);
          }, bottomTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
