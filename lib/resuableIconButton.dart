import 'package:flutter/material.dart';

class ReusableIconButton extends StatelessWidget {
  const ReusableIconButton(
      {this.buttonPressFunction, required this.buttonIcon});

  final VoidCallback? buttonPressFunction;
  final IconData? buttonIcon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: buttonPressFunction,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 6,
      child: Icon(buttonIcon),
    );
  }
}
