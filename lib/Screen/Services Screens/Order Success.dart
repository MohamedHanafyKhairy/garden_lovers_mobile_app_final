import 'package:flutter/material.dart';
import 'package:garden_lovers_mobile_app/Screen/Services%20Screens/Home%20Screen.dart';
import 'package:sizer/sizer.dart';

import '../ChatBot/ChatBot Screen.dart';

class OrderConfirm extends StatefulWidget {
  const OrderConfirm({super.key});

  @override
  State<OrderConfirm> createState() => _OrderConfirmState();
}

class _OrderConfirmState extends State<OrderConfirm> {
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
                                      borderRadius:
                                      BorderRadius.circular(1.3.h)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(1.h, 1.h, 0.1.h, 1.h),
                                    child: Icon(
                                        Icons.arrow_back_ios,
                                        size: 2.7.h, color: Color(0xFF113B27)
                                    ),
                                  )
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(padding: EdgeInsets.fromLTRB(0.5.h, 2.5.h, 0.h, 0.h),
                            child: Center(
                              child: Text(
                                'Service Confirmation',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Lilita',
                                  fontSize: 2.9.h,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
                            child: Container(
                              width: 6.h,
                              height: 7.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Garden Lovers Logo.png'))),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
                Center(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 7.h,),
                      Image(image: AssetImage('assets/images/Garden Lovers Logo.png')),
                      SizedBox(height: 2.h,),
                      Text(
                        'Your order is confirmed',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lilita',
                          fontSize: 2.9.h,
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Text(
                        'Thank you for add order wit us your order\nwill reach you ',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 2.2.h,
                        ),
                      ),
                      SizedBox(height: 13.h,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1.1.h)
                          ),
                          width: 19.h,
                          height: 5.5.h,
                          child: Center(
                            child: Text('Back to home',style: TextStyle(color: Color(0xFF113B27),fontSize: 2.4.h,fontFamily: 'zian'),),
                          )
                        ),
                      )
                    ],
                  ),
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
      },
    );
  }
}
