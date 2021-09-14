import 'package:flutter/material.dart';
import 'package:bmi_calculator/constraint.dart';
import 'icon_content.dart';

class reusablecard extends StatelessWidget {
  reusablecard({required this.Colour, required this.CardChild, required this.onPress});

  final Color Colour;
  final Widget CardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: CardChild,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colour,
          borderRadius: BorderRadius.circular(10.0),
        ),

      ),
    );
  }
}
