import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    this.height,
    this.weight,
  });

  final int? height;
  final int? weight;
  late double _bmi;
  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return " You are overweight";
    } else if (_bmi > 18.5) {
      return "You have a good BMI.";
    } else {
      return " You are underweight.";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "Consider adding more movement to your day and choosing healthier food options.";
    } else if (_bmi > 18.5) {
      return "Keep up the good work with a balanced lifestyle and regular physical activity";
    } else {
      return "Try to gain a little healthy weight by eating nutritious meals and snacks.";
    }
  }
}
