import 'package:flutter/material.dart';

import 'screens/input_page.dart';
import './screens/result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.light(
          primary: Color(0xff0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xff0A0E21),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// InputPage()
