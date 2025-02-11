import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ThirdPage extends StatelessWidget {
  final PageController controller;

  const ThirdPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          "https://firebasestorage.googleapis.com/v0/b/gardenlovers-4d08b.appspot.com/o/basmalla3-removebg-preview.png?alt=media&token=e923daba-4cfa-4d4e-b6e4-1bc3ace1ce60",
          height: 35.h,        ),
        SizedBox(height: 3.h),
        Text(
          'Get your own plant',
          style: TextStyle(
            fontSize: 3.5.h,
            fontWeight: FontWeight.bold,
            color: Colors.green[900],
            fontFamily: 'zian'
          ),
        ),
        SizedBox(height: 10),
        Text(
          'You can buy and get your plant through online with GREENERY',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 2.h,
            color: Colors.green[700],
            fontFamily: 'zian'
          ),
        ),
      ],
    );
  }
}