import 'package:flutter/material.dart';

import '../constant.dart';
import '../components/reuseble_card.dart';

class ResultPage extends StatelessWidget {
  final String calcResult;
  final String bmiResult;

  ResultPage({@required this.bmiResult, @required this.calcResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              'Your Result',
              style: KNumberStyke,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusebleCard(
              card: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: KNumberStyke.copyWith(
                      fontSize: 22.0,
                      color: Color(0xFF24D876),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    '$calcResult',
                    style: KNumberStyke,
                  ),
                  Text(
                    '$bmiResult ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Re-Calculate',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      height: BottomButtonHieght,
                      color: buttomBottonColor,
                      margin: EdgeInsets.only(top: 10.0),
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
              color: activeCardColor,
            ),
          )
        ],
      ),
    );
  }
}
