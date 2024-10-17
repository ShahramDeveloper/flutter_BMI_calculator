import 'package:bmi_calculator_app/widgets/background_shape_left.dart';
import 'package:bmi_calculator_app/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              RightShape(),
              LeftShape(),
            ],
          ),
        ),
      ),
    );
  }
}
