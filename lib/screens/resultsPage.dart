import 'package:bmicalculator/components/bottomButton.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/components/reusableCard.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'Your Result',
              style: resultsTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: activeCardColor,
              childWidget: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      resultText.toUpperCase(),
                      style: bmiTypeStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmiResult,
                      style: bmiNumStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: bmiTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'Recalculate'),
        ],
      ),
    );
  }
}
