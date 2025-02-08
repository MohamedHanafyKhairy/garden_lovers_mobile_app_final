import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:garden_lovers_mobile_app/Screen/Services%20Screens/Cleaning%20Order.dart';
import 'package:sizer/sizer.dart';
import '../ChatBot/ChatBot Screen.dart';
import '../Levi Screen.dart';
import 'Decoration Order.dart';
import 'Tramming Order.dart';

class Tramming_Service extends StatefulWidget {
  const Tramming_Service({super.key});

  @override
  State<Tramming_Service> createState() => _Tramming_ServiceState();
}

class _Tramming_ServiceState extends State<Tramming_Service> {
  int _currentIndex = 0;
  List<bool> Services = [true, false, false];
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
                  Levi_Screen()));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (p0, p1, p2) {
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
                              padding:
                              EdgeInsets.fromLTRB(0.h, 2.5.h, 0.h, 0.h),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                    width: 5.2.h,
                                    height: 5.2.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(1.3.h)),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          1.h, 1.h, 0.1.h, 1.h),
                                      child: Icon(Icons.arrow_back_ios,
                                          size: 2.7.h,
                                          color: Color(0xFF113B27)),
                                    )),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(11.5.h, 0.h, 1.h, 0.h),
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(1.8.h, 0.5.h, 1.8.h, 0),
                    child: Container(
                      width: double.infinity.w,
                      height: 5.h,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Services = [true, false, false];
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(1.6.h)),
                              height: 4.2.h,
                              width: 13.5.h,
                              child: Center(
                                child: Text(
                                  'Tramming',
                                  style: TextStyle(
                                      color: Color(0xFF113B27),
                                      fontFamily: 'Zian',
                                      fontSize: 2.1.h),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                Services = [false, true, false];
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(1.6.h)),
                              height: 4.2.h,
                              width: 13.5.h,
                              child: Center(
                                child: Text(
                                  'Cleaning',
                                  style: TextStyle(
                                      color: Color(0xFF113B27),
                                      fontFamily: 'Zian',
                                      fontSize: 2.1.h),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                Services = [false , false, true];
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(1.6.h)),
                              height: 4.2.h,
                              width: 13.5.h,
                              child: Center(
                                child: Text(
                                  'Decoration',
                                  style: TextStyle(
                                      color: Color(0xFF113B27),
                                      fontFamily: 'Zian',
                                      fontSize: 2.1.h),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  if (Services[0]) ...[
                    Tramming_Ser(),
                  ] else if (Services[1]) ...[
                    Cleaning_Ser(),
                  ] else if (Services[2]) ...[
                    Decoration_Ser(),
                  ]
                ],
              ),
            ),
            bottomNavigationBar: Container(
                height: 7.5.h,
                width: double.infinity.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/Background.png',
                        ),
                        fit: BoxFit.cover)),
                child: NavigationBar(
                  backgroundColor: Colors.transparent,
                  selectedIndex: _currentIndex,
                  onDestinationSelected: _onItemTapped,
                  destinations: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.5.h, 2.h, 0.h, 0.h),
                      child: NavigationDestination(
                        icon: Image(
                          image: AssetImage('assets/images/Before_Home.png'),
                        ),
                        label: '',
                        selectedIcon: Image(
                          image: AssetImage('assets/images/AfterHome.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.h),
                      child: NavigationDestination(
                        icon: Image(
                          image: AssetImage('assets/images/Before_Likes.png'),
                        ),
                        label: '',
                        selectedIcon: Image(
                            image: AssetImage('assets/images/After_Likes.png')),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.h),
                      child: NavigationDestination(
                        icon: Image(
                          image: AssetImage('assets/images/Before_Chat.png'),
                        ),
                        selectedIcon: Image(
                            image: AssetImage('assets/images/After_Chat.png')),
                        label: '',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.5.h),
                      child: NavigationDestination(
                        icon: Image(
                          image: AssetImage('assets/images/Before_Cart.png'),
                        ),
                        selectedIcon: Image(
                          image: AssetImage('assets/images/After_Cart.png'),
                        ),
                        label: '',
                      ),
                    )
                  ],
                )));
      },
    );
    ;
  }
}

class Tramming_Ser extends StatelessWidget {
  const Tramming_Ser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0.h, 0.6.h, 0.h, 0.h),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
              child: Container(
                width: 100.w,
                height: 64.3.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(170.h),
                        topLeft: Radius.circular(9.h))),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(1.8.h, 1.6.h, 1.8.h, 0.h),
              child: Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 0.6.h, sigmaY: 0.6.h),
                      child: Container(
                        height: 17.2.h,
                        width: 44.h,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.white60,
                                Colors.grey.withOpacity(0.3)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(1.9.h),
                            border:
                            Border.all(color: Colors.white60.withOpacity(0.5))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(1.2.h, 3.5.h, 0.h, 0.h),
                          child: Text(
                            'Creative Art in\nGarden Arrangement',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lalezar',
                              fontSize: 3.3.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(33.h, 0.h, 0.h, 0.h),
              child: Image.asset(
                'assets/images/Levi Logo.png',
                height: 18.8.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(1.8.h, 20.h, 1.8.h, 0),
              child: Container(
                width: 42.h,
                height: 33.h,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(0.5.h)),
                child: Center(
                  child: Image.asset(
                    'assets/images/Tramming_Image.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(1.8.h, 54.h, 1.8.h, 0.h),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tramming_Decoration(),
                          ));
                    },
                    child: Container(
                      width: 44.h,
                      height: 6.2.h,
                      decoration: BoxDecoration(
                          color: Color(0xFF113B27),
                          borderRadius: BorderRadius.circular(1.8.h)),
                      child: Center(
                        child: Text(
                          'Order now',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Zian',
                            fontSize: 2.9.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(7.3.h, 61.h, 1.9.h, 0.h),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      'Vision of previos works and customer feedback ',
                      style: TextStyle(color: Colors.grey, fontSize: 1.2.h),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Click here',
                        style: TextStyle(
                            color: Color(0xFF113B27),
                            fontWeight: FontWeight.bold,
                            fontSize: 1.3.h,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF113B27)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class Cleaning_Ser extends StatelessWidget {
  const Cleaning_Ser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0.h, 0.6.h, 0.h, 0.h),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
              child: Container(
                width: 100.w,
                height: 64.3.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(170.h),
                        topLeft: Radius.circular(9.h))),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(1.8.h, 1.6.h, 1.8.h, 0.h),
              child: Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 0.6.h, sigmaY: 0.6.h),
                      child: Container(
                        height: 17.2.h,
                        width: 44.h,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.white60,
                                Colors.grey.withOpacity(0.3)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(1.9.h),
                            border:
                            Border.all(color: Colors.white60.withOpacity(0.5))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(1.2.h, 3.5.h, 0.h, 0.h),
                          child: Text(
                            'Achive a clean\nGreen Garden',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lalezar',
                              fontSize: 3.3.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.h, 0.h, 0.h, 0.h),
              child: Image.asset(
                'assets/images/man1_one.png',
                height: 20.8.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(1.8.h, 15.h, 1.8.h, 0),
              child: Container(
                width: 42.h,
                height: 45.h,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(5.h)),
                child: Center(
                    child: Image(
                      image: AssetImage('assets/images/Cleaning Image.png'),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(1.8.h, 54.h, 1.8.h, 0.h),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CleaningOrder(),
                          ));
                    },
                    child: Container(
                      width: 44.h,
                      height: 6.2.h,
                      decoration: BoxDecoration(
                          color: Color(0xFF113B27),
                          borderRadius: BorderRadius.circular(1.8.h)),
                      child: Center(
                        child: Text(
                          'Order now',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Zian',
                            fontSize: 2.9.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(7.3.h, 61.h, 1.9.h, 0.h),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      'Vision of previos works and customer feedback ',
                      style: TextStyle(color: Colors.grey, fontSize: 1.2.h),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Click here',
                        style: TextStyle(
                            color: Color(0xFF113B27),
                            fontWeight: FontWeight.bold,
                            fontSize: 1.3.h,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF113B27)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class Decoration_Ser extends StatelessWidget {
  const Decoration_Ser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0.h, 0.6.h, 0.h, 0.h),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
              child: Container(
                width: 100.w,
                height: 64.3.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(170.h),
                        topLeft: Radius.circular(9.h))),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(1.8.h, 1.6.h, 1.8.h, 0.h),
              child: Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 0.6.h, sigmaY: 0.6.h),
                      child: Container(
                        height: 17.2.h,
                        width: 44.h,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.white60,
                                Colors.grey.withOpacity(0.3)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(1.9.h),
                            border:
                            Border.all(color: Colors.white60.withOpacity(0.5))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(1.2.h, 3.5.h, 0.h, 0.h),
                          child: Text(
                            'Make your trees\nburst with beauty',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lalezar',
                              fontSize: 3.3.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(23.h, 0.h, 0.h, 0.h),
              child: Image.asset(
                'assets/images/man1.png',
                height: 20.8.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(1.8.h, 15.h, 1.8.h, 0),
              child: Container(
                width: 42.h,
                height: 45.h,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(5.h)),
                child: Center(
                    child: Image(
                      image: AssetImage('assets/images/Decoration_Image.png'),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(1.8.h, 54.h, 1.8.h, 0.h),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Decoration_Order(),
                          ));
                    },
                    child: Container(
                      width: 44.h,
                      height: 6.2.h,
                      decoration: BoxDecoration(
                          color: Color(0xFF113B27),
                          borderRadius: BorderRadius.circular(1.8.h)),
                      child: Center(
                        child: Text(
                          'Order now',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Zian',
                            fontSize: 2.9.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(7.3.h, 61.h, 1.9.h, 0.h),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      'Vision of previos works and customer feedback ',
                      style: TextStyle(color: Colors.grey, fontSize: 1.2.h),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Click here',
                        style: TextStyle(
                            color: Color(0xFF113B27),
                            fontWeight: FontWeight.bold,
                            fontSize: 1.3.h,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF113B27)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
