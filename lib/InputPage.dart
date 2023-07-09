import 'package:bmicalculator/resuableIconButton.dart';
import 'package:bmicalculator/resusableIcon.dart';
import 'package:bmicalculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  int height = 180;
  int weight = 60;
  int age = 25;

  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      gestureFunction: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      childWidget: ResuableIcon(
                        icondata: FontAwesomeIcons.mars,
                        label: 'Male',
                      )),
                ),
                Expanded(
                  child: ReusableCard(
                    gestureFunction: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    childWidget: ResuableIcon(
                      icondata: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                color: activeCardColor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: labelTextStyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: numberTextStyle,
                        ),
                        const Text(
                          'cm',
                          style: labelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.amber,
                        activeTrackColor: const Color(0xffeb155),
                        inactiveTrackColor: const Color(0x308d8e98),
                        overlayColor: Colors.amber,
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        min: 120.0,
                        max: 220.0,
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Weight',
                          style: labelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReusableIconButton(
                              buttonIcon: Icons.add,
                              buttonPressFunction: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ReusableIconButton(
                              buttonIcon: Icons.remove,
                              buttonPressFunction: () {
                                setState(() {
                                  if (weight != 1) {
                                    weight--;
                                  }
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Age',
                          style: labelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReusableIconButton(
                              buttonIcon: Icons.add,
                              buttonPressFunction: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ReusableIconButton(
                              buttonIcon: Icons.remove,
                              buttonPressFunction: () {
                                setState(() {
                                  if (age != 1) {
                                    age--;
                                  }
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomCardColor,
            margin: const EdgeInsets.only(top: 10),
            height: botomContainerHeight,
            width: double.infinity,
            child: const Center(
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
