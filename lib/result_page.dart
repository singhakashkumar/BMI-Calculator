import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  ResultPage({@required this.bmiResult,@required this.interpretation,@required this.resultText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: Text('Result',style: kTitleTextStyle,textAlign: TextAlign.center,),
            ),
          ),

          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(bmiResult,style: kResultTextStyle,),
                  Text(resultText,style: kBMITextStyle,),
                  Text(interpretation,style: kBodyTextStyle,textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',onTap: (){
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}
