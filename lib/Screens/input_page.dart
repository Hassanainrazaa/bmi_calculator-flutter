

import 'package:bmi_calculator/Screens/Results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import '../constraint.dart';
import 'Results_page.dart';
import '../components/Bottom_Button.dart';
import '../components/Round_icon.dart';
import 'package:bmi_calculator/calculator.dart';


enum Gender{
  male,
  female
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  Gender SelectedGender = Gender.female;
  Gender SelectGender = Gender.male;
  int Height = 180;
  int Weight = 65;
  int Age = 25;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget> [
              Expanded(
                  child: reusablecard(
                    onPress: () {
                      setState(() {
                        SelectedGender = Gender.male;
                      });
                    },
                    Colour: SelectedGender == Gender.male ? KactiveCardColour : KinActiveColour,
                  CardChild: CardChild(icon: FontAwesomeIcons.mars, label: "Male",),)),
              Expanded(
                child : reusablecard(
                  onPress: () {
                    setState(() {
                      SelectedGender = Gender.female;
                    });
                  },
                  Colour: SelectedGender == Gender.female ? KactiveCardColour : KinActiveColour,
                   CardChild:
                   CardChild(icon: FontAwesomeIcons.venus, label: "Female",) ,),
              )]
          )),
          Expanded(
            
              child: reusablecard(
            onPress: () {

            },
            Colour: KactiveCardColour,
            CardChild: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("HEIGHT",
                    style: KlabelStyle,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: <Widget>[
                        Text(Height.toString(),
                        style: KnumberStyle,
                        ),
                        Text("Cm",style: KlabelStyle,)

                      ],
                    ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
                    ),
                    child: Slider(
                    value: Height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double NewValue)
                  {
                    setState(() {
                      Height = NewValue.round();
                    });
                  },
                  ),

                  ) ],

          ),
            ),)),
          Expanded(child: Row(
              children: <Widget> [
                Expanded(child: reusablecard(
                  onPress: () {

                  },
                  Colour: KactiveCardColour,
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "WEIGHT",
                      ),
                      Text(
                        Weight.toString(),
                        style: KnumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedButton(icon: FontAwesomeIcons.minus,
                          OnPressed: () {
                            setState(() {
                              Weight--;
                            });
                          },),
                          SizedBox(
                            width: 10,
                          ),
                          RoundedButton(icon: FontAwesomeIcons.plus, OnPressed: () {
                            setState(() {
                              Weight++;
                            });
                          },)
                        ],
                      ),
                    ],

                ),)),
                Expanded(

                    child: reusablecard(
                      onPress: () {

                      },
                      Colour: KactiveCardColour,
                      CardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Age",
                          style: KlabelStyle,),
                          Text(
                            Age.toString(),
                            style: KnumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundedButton(icon: FontAwesomeIcons.minus, OnPressed: () {
                                setState(() {
                                  Age--;
                                });
                              }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundedButton(icon: FontAwesomeIcons.plus, OnPressed: () {
                                setState(() {
                                  Age++;
                                });
                              })
                            ],
                          )
                        ],

                ),)),
              ]
          )),
          BottomButton(BottomTitle: "CALCULATE",
            OnTap: () {

            Calculator Calc = Calculator(height: Height, weight : Weight);


            Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
                BMIResult : Calc.CalculateBMI(),
                Interpretation: Calc.GetInterpretation(),
                ResultText : Calc.GetResult(),
            ),
            ),
            );
            } ,)
        ]
      )  // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}





