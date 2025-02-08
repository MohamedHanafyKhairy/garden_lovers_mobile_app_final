import 'package:flutter/material.dart';
import 'package:garden_lovers_mobile_app/Screen/ChatBot/ChatBot%20Screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'Services Screens/Home Screen.dart';
import 'Services Screens/Three Services.dart';

class Levi_Screen extends StatefulWidget {
  const Levi_Screen({super.key});

  @override
  _Levi_ScreenState createState() => _Levi_ScreenState();
}

class _Levi_ScreenState extends State<Levi_Screen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });


    if (index == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  GardenLovers_ChatBot()));
    }
    else if(index == 0)
      {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    HomeScreen()));
      }

  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        body: Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Background.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(1.9.h, 4.3.h, 1.9.h, 0.2.h),
                  child: Container(
                    width: double.infinity.w,
                    height: 12.h,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.h, 2.5.h, 0.h, 0.h),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                width: 5.2.h,
                                height: 5.2.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(1.3.h)),
                                child: Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(1.h, 1.h, 0.1.h, 1.h),
                                  child: Icon(Icons.arrow_back_ios,
                                      size: 2.7.h, color: Color(0xFF113B27)),
                                )),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.fromLTRB(4.0.h, 0.h, 1.h, 0.h),
                          child: Container(
                            width: 10.h,
                            height: 11.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Garden Lovers Logo.png'))),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Tramming_Service(),));
                          },
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0.h, 2.5.h, 0.h, 0.h),
                              child: Container(
                                width: 8.6.h,
                                height: 3.1.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(0.8.h)),
                                child: Center(
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                        fontFamily: 'Zian',
                                        fontSize: 2.3.h,
                                        color: Color(0xFF113B27)),
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
                child: Center(
                  child: Text(
                    'Garden Lovers',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lilita',
                      fontSize: 3.8.h,
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.h),
                    child: Container(
                        width: 39.h,
                        height: 14.5.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3.h),
                          border: Border.all(color: Color(0xFF113B27)),
                        ),
                        child: Padding(
                          padding:
                          EdgeInsets.fromLTRB(1.2.h, 1.3.h, 1.h, 1.2.h),
                          child: Text(
                            'Hello Ahmed, I am Your Friend Levi 👋.\n hope you enjoy our service, and if\nyou encounter problem, contant us\n as soon as possible.',
                            style: TextStyle(
                                color: Color(0xFF113B27),
                                fontFamily: 'Lilita',
                                fontSize: 2.1.h,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(18.h, 15.7.h, 0.h, 0.h),
                    child: Container(
                      width: 4.7.h,
                      height: 2.5.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(2.3.h),
                            bottomLeft: Radius.circular(2.3.h)),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/Levi Logo.png'),
                    height: 45.h,
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Tramming_Service(),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1.6.h)),
                          width: 27.h,
                          height: 6.2.h,
                          child: Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                color: Color(0xFF113B27),
                                fontFamily: 'Lilita',
                                fontSize: 2.5.h,
                              ),
                            ),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
          bottomNavigationBar: Container(
              height: 7.5.h,
              width: double.infinity.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Background.png',),
                      fit: BoxFit.cover
                  )
              ),
              child: NavigationBar(
                backgroundColor: Colors.transparent,
                selectedIndex: _currentIndex,
                onDestinationSelected: _onItemTapped,
                destinations: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.5.h, 2.h, 0.h, 0.h),
                    child: NavigationDestination(
                      icon: Image(image: AssetImage('assets/images/Before_Home.png'),),
                      label: '',
                      selectedIcon: Image(image: AssetImage('assets/images/AfterHome.png'),),
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.h),
                    child:                     NavigationDestination(
                      icon: Image(image: AssetImage('assets/images/Before_Likes.png'),),
                      label: '',
                      selectedIcon: Image(image: AssetImage('assets/images/After_Likes.png')),
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.h),
                    child:  NavigationDestination(
                      icon: Image(image: AssetImage('assets/images/Before_Chat.png'),),
                      selectedIcon: Image(image: AssetImage('assets/images/After_Chat.png')),
                      label: '',
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.5.h),
                    child:  NavigationDestination(
                      icon: Image(image: AssetImage('assets/images/Before_Cart.png'),),
                      selectedIcon: Image(image: AssetImage('assets/images/After_Cart.png'),),
                      label: '',
                    ),
                  )
                ],
              )
          )
      );
    });
  }
}
