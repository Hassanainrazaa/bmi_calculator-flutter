import 'package:bmi_calculator/components/Bottom_Button.dart';
import 'package:bmi_calculator/constraint.dart';
import 'package:flutter/material.dart';
import '../constraint.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.BMIResult,required this.Interpretation,required this.ResultText});
  final String BMIResult;
  final String ResultText;
  final String Interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title : Text("BMI Calculator"),
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text("Your Result",
                style: KtitleStyle,),
              ),
            ),
            Expanded(
              flex: 5,
              child: reusablecard(Colour: KactiveCardColour,
              CardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(ResultText.toUpperCase(),
              style: KresultTextStyle,
              ),
              Text(BMIResult,
              style: KBMITextStyle,
              ),
              Text(Interpretation,
              textAlign: TextAlign.center,
              style: KTextStyle,
              ),
    ],
                )     ,
              onPress: () {

              }

              ),
            ),
            BottomButton(
              BottomTitle: "RECALCULATE",
                OnTap: () {
                 Navigator.pop(context);
    },
            )
          ],
        )
      ,
    );
  }
}
