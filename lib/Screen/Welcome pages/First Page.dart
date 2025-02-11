import 'package:flutter/material.dart';
import 'package:garden_lovers_mobile_app/Screen/Regestration%20Screens/Login%20Screen.dart';
import 'package:garden_lovers_mobile_app/main.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Second Page.dart';
import 'Third page.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 8,
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://firebasestorage.googleapis.com/v0/b/gardenlovers-4d08b.appspot.com/o/basmalla1-removebg-preview.png?alt=media&token=9acef9a9-62c9-4401-bd30-4369aade50a1",
                        height: 35.h,
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        'Identify plants',
                        style: TextStyle(
                          fontSize: 3.5.h,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                            fontFamily: 'zian'
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'You can identify new plants you don\'t know through GREENERY',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 2.2.h,
                          color: Colors.green[700],
                          fontFamily: 'zian'
                        ),
                      ),
                    ],
                  ),
                  SecondPage(controller: _controller),
                  ThirdPage(controller: _controller),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                dotColor: Colors.grey,
                activeDotColor: Color(0xff173918),
                dotHeight: 1.2.h,
                dotWidth: 1.2.h,
              ),
            ),
            SizedBox(height: 15.h),
            ElevatedButton(
              onPressed: () {
                _controller.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
                if(currentPage == 2){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginFun(),));
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff153b15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.8.h),
                ),
                padding: EdgeInsets.symmetric(vertical: 2.h),
              ),
              child: Center(
                child: Text(
                  currentPage == 2 ? 'Get started' : 'Next',
                  style: TextStyle(
                    fontSize: 1.8.h,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
          ],
        ),
      ),
    );
  }
}