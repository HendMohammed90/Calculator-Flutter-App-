import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../clculator_brain.dart';
import '../components/card_details.dart';
import '../constant.dart';
import 'result_page.dart';
import '../components/reuseble_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // static const double BottomButtonHieght = 80.0;
  // Color activeCardColor = Color(0xFF1D1E33);
  // Color inactiveColor = Color(0xFF111238);
  // Color buttomBottonColor = Color(0xFFEB1555);
  // Color textColor = Color(0xFF8D8E98);
  // IconData maleIcon = FontAwesomeIcons.mars;
  // IconData femaleIcon = FontAwesomeIcons.venus;
  // bool isMale = true;
  int hieght = 180;
  int weight = 70;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusebleCard(
                    tapFunction: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    color: isMale ? activeCardColor : inactiveColor,
                    card: CardDetails(
                      textColor: textColor,
                      iconSympol: maleIcon,
                      lapel: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusebleCard(
                    tapFunction: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    color: isMale ? inactiveColor : activeCardColor,
                    card: CardDetails(
                      textColor: textColor,
                      iconSympol: femaleIcon,
                      lapel: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusebleCard(
                    color: activeCardColor,
                    card: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Height'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              '$hieght',
                              style: KNumberStyke,
                            ),
                            Text(
                              'CM',
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: textColor,
                            activeTrackColor: buttomBottonColor,
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderThumbShape(enabledThumbRadius: 30.0),
                          ),
                          child: Slider(
                            min: 120,
                            max: 220,
                            value: hieght.toDouble(),
                            onChanged: (double newValue) {
                              print(newValue);
                              setState(() {
                                hieght = newValue.round();
                                print(newValue.round());
                              });
                            },
                            // activeColor: buttomBottonColor,
                            // inactiveColor: textColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusebleCard(
                    color: activeCardColor,
                    card: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '$weight',
                          style: KNumberStyke,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              process: () {
                                setState(() {});
                                weight++;
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              process: () {
                                setState(() {});
                                weight--;
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusebleCard(
                    color: activeCardColor,
                    card: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '$age',
                          style: KNumberStyke,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              process: () {
                                setState(() {});
                                age++;
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              process: () {
                                setState(() {});
                                age--;
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalulatorBrain cal = CalulatorBrain(
                height: hieght,
                weight: weight,
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmiResult: cal.calculateBMI(),
                            calcResult: cal.getResult(),
                          )));
            },
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Calculate BMI',
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
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {},
      // ),
    );
  }
}

// Color(0xFFEB1555)
// FontAwesomeIcons.mars
// setState(() {
// isMale = true;
// }

//Here WE Customize the button as we want
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function process;
  RoundIconButton({@required this.icon, @required this.process});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: process,
      shape: CircleBorder(),
      elevation: 6.0,
      fillColor: textColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
