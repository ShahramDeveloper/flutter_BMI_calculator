import 'package:bmi_calculator_app/constants/constants.dart';
import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  final double width;

  const RightShape({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 50,
          width: width,
          decoration: BoxDecoration(
            color: orangeBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
