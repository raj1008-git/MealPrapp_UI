import 'package:flutter/material.dart';

class SimpleDottedDivider extends StatelessWidget {
  final Color color;
  final double dotSize;

  const SimpleDottedDivider({
    Key? key,
    this.color = Colors.grey,
    this.dotSize = 4.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        50,
        (index) => Container(
          width: dotSize,
          height: 1,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }
}