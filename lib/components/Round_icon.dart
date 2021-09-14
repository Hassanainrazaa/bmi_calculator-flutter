import 'package:flutter/material.dart';
import '../constraint.dart';



class RoundedButton extends StatelessWidget {
  RoundedButton({required this.icon, required this.OnPressed});

  final IconData icon;
  final VoidCallback OnPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: OnPressed,
      constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}