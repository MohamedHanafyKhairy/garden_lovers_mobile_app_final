import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../ChatBot/ChatBot Screen.dart';

class Tramming_Decoration extends StatefulWidget {
  const Tramming_Decoration({super.key});

  @override
  State<Tramming_Decoration> createState() => _Tramming_DecorationState();
}

class _Tramming_DecorationState extends State<Tramming_Decoration> {
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
            body: SingleChildScrollView(
              child: Container(
                  width: 100.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Background.png'),
                        fit: BoxFit.cover,)),
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
                                      'Tramming Order',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Lilita',
                                        fontSize: 3.h,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
                                  child: Container(
                                    width: 7.h,
                                    height: 8.h,
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
                      Stack(
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.fromLTRB(1.9.h, 1.6.h, 1.9.h, 0.h),
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
                                              Colors.grey.withOpacity(0.5)
                                            ],
                                          ),
                                          borderRadius: BorderRadius.circular(1.9.h),
                                          border: Border.all(color:Colors.white60.withOpacity(0.5))),
                                      child: Padding(padding: EdgeInsets.fromLTRB(1.2.h, 1.h, 0.h, 0.h),
                                        child: Text(
                                          'Let us add a touch of'
                                              '\nelengance to your outdoing'
                                              '\nspace - you edserve a'
                                              '\nbeatiful garden',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lalezar',
                                            fontSize: 2.8.h,
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
                        ],
                      ),
                      SizedBox(height: 2.2.h,),
                      Container(
                          width: double.infinity.w,
                          height: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(7.5.h),topRight: Radius.circular(7.5.h)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 3.h,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(3.9.h, 1.h, 3.9.h, 1.h),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0.h, 0.h, 2.h, 0.h),
                                  width: double.infinity.w,
                                  height: 5.7.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.5.h),
                                    color: Color(0xFF113B27),
                                  ),
                                  child: TextField(
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Zian',
                                      fontSize: 2.7.h,
                                    ),
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.add_location_alt_outlined,color: Colors.white,size: 3.h,),
                                        hintText: 'Your address',
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 2.2.h,
                                        ),
                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                                        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)
                                    ),
                                    cursorColor: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(3.9.h, 1.h, 3.9.h, 1.h),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0.h, 0.h, 2.h, 0.h),
                                  width: double.infinity.w,
                                  height: 5.7.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.5.h),
                                    color: Color(0xFF113B27),
                                  ),
                                  child: TextField(
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Zian',
                                      fontSize: 2.7.h,
                                    ),
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.account_circle_outlined,color: Colors.white,size: 3.h,),
                                        hintText: 'Phone number or E-mail',
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 2.2.h,
                                        ),
                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                                        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)
                                    ),
                                    cursorColor: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(3.9.h, 1.h, 3.9.h, 1.h),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(2.5.h, 1.h, 2.5.h, 1.h),
                                  width: double.infinity.w,
                                  height: 13.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.5.h),
                                    color: Color(0xFF113B27),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 12.h,
                                        height: double.infinity.h,
                                        child: Column(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.fromLTRB(0.8.h, 0.h, 0.h, 0.h),
                                              width: double.infinity.w,
                                              height: 8.7.h,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(0.8.h),
                                                border: Border.all(
                                                    color: Colors.deepPurpleAccent,
                                                    width: 0.1.h
                                                ),
                                                color: Colors.white,
                                              ),
                                              child: TextField(
                                                style: TextStyle(
                                                  color: Colors.deepPurpleAccent,
                                                  fontFamily: 'Zian',
                                                  fontSize: 8.h,
                                                ),
                                                decoration: InputDecoration(
                                                    hintText: '20',
                                                    hintStyle: TextStyle(
                                                      color: Colors.deepPurpleAccent,
                                                      fontSize: 8.h,
                                                    ),
                                                    focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)
                                                ),
                                                cursorColor: Colors.deepPurpleAccent,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0.1.h, 8.h, 0),
                                              child: Text('Hour',style: TextStyle(color: Colors.white,fontFamily:'Zian'),),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 1.h,),
                                      Container(
                                          width: 2.h,
                                          height: double.infinity.h,
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child:  Text(':',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 5.h),),
                                          )
                                      ),
                                      SizedBox(width: 1.h,),
                                      Container(
                                        width: 12.h,
                                        height: double.infinity.h,
                                        child: Column(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.fromLTRB(0.8.h, 0.h, 0.h, 0.h),
                                              width: double.infinity.w,
                                              height: 8.7.h,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(0.8.h),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 0.1.h
                                                ),
                                                color: Colors.white,
                                              ),
                                              child: TextField(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Zian',
                                                  fontSize: 8.h,
                                                ),
                                                decoration: InputDecoration(
                                                    hintText: '00',
                                                    hintStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 8.h,
                                                    ),
                                                    focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)
                                                ),
                                                cursorColor: Colors.black,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0.1.h, 8.h, 0),
                                              child: Text('Minute',style: TextStyle(color: Colors.white,fontFamily:'Zian'),),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 1.h,),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0.h, 0.h,0.h, 0.h),
                                        child: Container(
                                          height: 8.h,
                                          width: 5.h,
                                          color: Colors.transparent,
                                          child: Container(
                                            width: 5.3.h,
                                            height: 5.2.h,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(0.5.h)
                                            ),
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  child: Container(
                                                    width: 6.h,
                                                    height: 4.h,
                                                    decoration: BoxDecoration(
                                                        color: Colors.pink.withOpacity(0.3),
                                                        borderRadius: BorderRadius.only(topRight: Radius.circular(0.5.h),topLeft: Radius.circular(0.5.h))
                                                    ),
                                                    child: Center(
                                                      child: Text('AM',style: TextStyle(color: Colors.red.withOpacity(0.8),fontSize: 2.5.h,fontFamily: 'Zian'),),
                                                    ),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  child:  Container(
                                                    width: 6.h,
                                                    height: 4.h,
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey.withOpacity(0.5),
                                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0.5.h),bottomRight: Radius.circular(0.5.h))
                                                    ),
                                                    child: Center(
                                                      child: Text('PM',style: TextStyle(color: Colors.red.withOpacity(0.8),fontSize: 2.5.h,fontFamily: 'Zian'),),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(3.9.h, 1.h, 3.9.h, 1.h),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0.h, 0.h, 2.h, 0.h),
                                  width: double.infinity.w,
                                  height: 5.7.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.5.h),
                                    color: Color(0xFF113B27),
                                  ),
                                  child: TextField(
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Zian',
                                      fontSize: 2.7.h,
                                    ),
                                    decoration: InputDecoration(
                                        suffixIcon: Icon(Icons.cloud_download,color: Colors.white,size: 3.h,),
                                        hintText: 'Download images for plants /trees',
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 2.2.h,
                                        ),
                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                                        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)
                                    ),
                                    cursorColor: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(3.9.h, 3.5.h, 3.9.h, 1.h),
                                child: Container(
                                    padding: EdgeInsets.fromLTRB(0.h, 0.h, 2.h, 0.h),
                                    width: double.infinity.w,
                                    height: 5.7.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1.5.h),
                                      color: Color(0xFF113B27),
                                    ),
                                    child:  Center(
                                      child: Text('Send Order',style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Zian',
                                        fontSize: 2.9.h,
                                      ),),
                                    )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(7.3.h, 0.1.h, 1.9.h, 0.h),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Vision of previos works and customer feedback ',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 1.2.h),
                                      ),
                                      GestureDetector(
                                        onTap: (){},
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
                          )
                      )
                    ],
                  )
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
