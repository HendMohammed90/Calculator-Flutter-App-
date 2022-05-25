import 'dart:math';

class CalulatorBrain {
  final int weight;
  final int height;
  double _bmi;

  CalulatorBrain({this.weight, this.height});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'You Have a higher than normal body weight, Try to Exercise More';
    } else if (_bmi >= 18.0) {
      return 'You Have Normal Body Wieght';
    } else {
      return 'You Have a lower than normal body weight, Try to Eat More';
    }
  }
}
