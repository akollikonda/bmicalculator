import 'package:bmicalculator/resusableIcon.dart';
import 'package:bmicalculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double botomContainerHeight = 80;
const Color activeCardColor = Color(0xFF1F1D33);
const Color inactiveCardColor = Color(0xffff111328);
const Color bottomCardColor = Colors.pink;
const Color txtColor = Colors.white;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {}

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardColor = activeCardColor;
                        femaleCardColor = inactiveCardColor;
                      });
                    },
                    child: ReusableCard(
                        color: maleCardColor,
                        childWidget: ResuableIcon(
                          icondata: FontAwesomeIcons.mars,
                          label: 'Male',
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardColor = inactiveCardColor;
                        femaleCardColor = activeCardColor;
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      childWidget: ResuableIcon(
                        icondata: FontAwesomeIcons.venus,
                        label: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            color: activeCardColor,
            childWidget:
                ResuableIcon(icondata: FontAwesomeIcons.a, label: 'label'),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomCardColor,
            margin: EdgeInsets.only(top: 10),
            height: botomContainerHeight,
            width: double.infinity,
            child: Center(
              child: Text(
                'Calculate',
                style: TextStyle(
                  color: txtColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
