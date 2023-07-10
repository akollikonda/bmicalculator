import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, this.childWidget, this.gestureFunction});

  final Color color;
  final Widget? childWidget;
  final VoidCallback? gestureFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          margin: EdgeInsets.all(15),
          child: childWidget,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onTap: gestureFunction);
  }
}
