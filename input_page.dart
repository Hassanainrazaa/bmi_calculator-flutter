import 'package:flutter/material.dart';




class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Center(
        child:
        Text(
          'Body Text',
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}