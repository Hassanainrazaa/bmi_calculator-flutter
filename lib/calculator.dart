import 'dart:math';

class Calculator
{
  Calculator({required this.height, required this.weight} );

  final int height;
  final int weight;
  double _BMI = 0;

  String CalculateBMI()
  {
     _BMI = weight / pow(height / 100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String GetResult()
  {
    if (_BMI >= 25)
      {
        return "Over Weight";
      }
    else if (_BMI >= 18.5)
      {
        return "Normal";
      }
    else
      {
        return "Underweight";
      }
  }

  String GetInterpretation()
  {
    if (_BMI >= 25)
    {
      return "Over Weight!!! Kindly do some exersice";
    }
    else if (_BMI >= 18.5)
    {
      return "Normal!! You have normal Weight Good job";
    }
    else
    {
      return "Underweight!! Kindly eat more";
    }
  }
}