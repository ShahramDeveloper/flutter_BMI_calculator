import 'package:bmi_calculator_app/widgets/background_shape_left.dart';
import 'package:bmi_calculator_app/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  double resultBMI = 0;
  String resultText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'تو چنده؟ BMI',
          style: TextStyle(color: black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: weightController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: orangeBackground,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'وزن',
                      hintStyle: TextStyle(
                        color: orangeBackground.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: heightController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: orangeBackground,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'قد',
                      hintStyle: TextStyle(
                        color: orangeBackground.withOpacity(0.5),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                final weight = double.parse(weightController.text);
                final height = double.parse(heightController.text);

                setState(() {
                  resultBMI = weight / (height * height);
                  if (resultBMI > 25) {
                    resultText = 'شما اضافه وزن دارید';
                  } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                    resultText = 'وزن شما نرمال است';
                  } else {
                    resultText = 'شما کمتر از حد نرمال است';
                  }
                });
              },
              child: Text(
                '!محاسبه کن',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              resultBMI.toStringAsFixed(2),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 64),
            ),
            Text(
              resultText,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: orangeBackground,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            LeftShape(
              width: 200,
            ),
            SizedBox(
              height: 15,
            ),
            RightShape(
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
