import 'dart:math';
import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweigth';
    } else if (_bmi >= 18.5) {
      return "Normal";
    } else {
      return "Underweigth";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return "You have a normal body weight. Good Job!";
    } else {
      return "You have a lowr than normal body weight. You can eat a bit more.";
    }
  }
}
