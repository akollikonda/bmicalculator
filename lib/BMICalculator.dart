import 'package:flutter/material.dart';

import 'screens/InputPage.dart';

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: InputPage(),
    );
  }
}
