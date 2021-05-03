import 'dart:math';

import 'package:flutter/cupertino.dart';

class BmiCalculate {
  final int weight;
  final int height;

  BmiCalculate({this.height, this.weight});

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 16) {
      return "VERY SEVERELY UNDERWEIGHT";
    } else if (_bmi >= 16 && _bmi <= 16.9) {
      return 'SEVERELY UNDERWEIGHT';
    } else if (_bmi >= 17 && _bmi <= 18.4) {
      return 'UNDERWEIGHT';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return "NORMAL";
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return "OVERWEIGHT";
    } else if (_bmi >= 30 && _bmi <= 34.9) {
      return "OBESE Class I \n(Moderately obese)";
    } else if (_bmi >= 35 && _bmi <= 39.9) {
      return "OBESE Class II \n(Severely obese)";
    } else if (_bmi >= 40) {
      return "OBESE Class III\n(Very Severely obese)";
    } else {
      return "NORMAL";
    }
  }

  

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You should eat more!';
    }
  }
}
