import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecondPage extends StatelessWidget {
  final PageController controller;

  const SecondPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          "https://firebasestorage.googleapis.com/v0/b/gardenlovers-4d08b.appspot.com/o/basmalla2-removebg-preview.png?alt=media&token=606282ee-d2a8-47e7-b674-bc28cdd213fe",
          height: 35.h,        ),
        SizedBox(height: 3.h),
        Text(
          'Find your favorite',
          style: TextStyle(
            fontSize: 3.5.h,
            fontWeight: FontWeight.bold,
            color: Colors.green[900],
            fontFamily: 'zian'
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          'You can find your favorite plant in GREENERY',
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