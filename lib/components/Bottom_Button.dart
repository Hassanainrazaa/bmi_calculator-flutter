import 'package:flutter/material.dart';
import '../constraint.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.OnTap, required this.BottomTitle});

  final VoidCallback OnTap;
  final String BottomTitle;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        child: Center(
          child: Text(
            BottomTitle,
            style: KlargeButtonTextStyle,),
        ),
        color: KbottomContainerColour,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        height: 60.0,
      ),
    );
  }
}
