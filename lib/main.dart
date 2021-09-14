import 'package:flutter/material.dart';
import 'Screens/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor: Color(0xFF0A0E21),
    ),
        home : MyHomePage(),
      );

  }
}

/*
primaryColor: Color(0xFF0A0E21),
scaffoldBackgroundColor: Color(0xFF0A0E21),
accentColor: Colors.red,
textTheme: TextTheme(
body1: TextStyle(
color: Color(0xFFFFFFFF),

 */