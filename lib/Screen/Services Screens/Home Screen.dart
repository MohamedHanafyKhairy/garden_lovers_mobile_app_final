import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:garden_lovers_mobile_app/Screen/ChatBot/ChatBot%20Screen.dart';
import 'package:garden_lovers_mobile_app/Screen/Levi%20Screen.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const GardenLovers_ChatBot()),
      );
    } else if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('My Profile'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.pop(context);

                  },
                ),
                ListTile(
                  leading: Icon(Icons.contact_support),
                  title: Text('Contact Us'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: Container(
            width: 100.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(2.h, 0.h, 2.h, 0.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.h, 4.3.h, 0.h, 0.h),
                    child: Container(
                      width: double.infinity,
                      height: 11.h,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.h, 2.5.h, 0.h, 0.h),
                            child: Builder(
                              builder: (context) {
                                return IconButton(
                                  onPressed: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                  icon: Icon(
                                    Icons.menu,
                                    size: 4.4.h,
                                    color: Colors.white,
                                  ),
                                );
                              },
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(2.5.h, 0.h, 1.h, 0.h),
                            child: Container(
                              width: 9.h,
                              height: 10.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Garden Lovers Logo.png'),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.h, 2.5.h, 0, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_outlined,
                                color: Colors.white,
                                size: 4.4.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Center(
                        child: Text(
                          'Garden Lovers',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Protest_Strike',
                            fontSize: 3.6.h,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Levi_Screen(),));
                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.h, 3.h, 0.h, 1.h),
                          child: Container(
                            height: 21.7.h,
                            width: 55.h,
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0.h, 4.h, 0.h, 0.h),
                                  child: Center(
                                    child: ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 0.6.h, sigmaY: 0.6.h),
                                        child: Container(
                                          height: 19.2.h,
                                          width: 44.h,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Colors.white60,
                                                Colors.grey.withOpacity(0.3),
                                              ],
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(1.2.h),
                                            border: Border.all(
                                                color: Colors.white60
                                                    .withOpacity(0.5)),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                1.2.h, 4.3.h, 0.h, 0.h),
                                            child: Text(
                                              'Pristine trees,\nperfected beauty',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 2.8.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      28.2.h, 0.h, 0.h, 0.h),
                                  child: Image.asset(
                                    'assets/images/Levi Logo.png',
                                    height: 50.h,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Image.asset('assets/images/slider.png'),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 1.6.h, 9.h, 0),
                                child: Image.asset('assets/images/Line 5.png'),
                              ),
                              Text(
                                'Resources',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins_Reg',
                                  fontSize: 2.2.h,
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsets.fromLTRB(9.h, 0.1.h, 0.h, 0),
                                child: Image.asset('assets/images/Line 5.png'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.5.h),
                        Container(
                          height: 20.h,
                          width: 50.h,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 1.h),
                        Container(
                          height: 2.7.h,
                          width: 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(0.7.h),
                          ),
                          child: Center(
                            child: Text(
                              'All Resources',
                              style: TextStyle(
                                fontFamily: 'Poppins_Reg',
                                color: Colors.black,
                                fontSize: 1.h,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: 19.h,
                            width: 55.h,
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 0.h),
                                  child: Center(
                                    child: ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 0.6.h, sigmaY: 0.6.h),
                                        child: Container(
                                          height: 19.2.h,
                                          width: 44.h,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Colors.white60,
                                                Colors.grey.withOpacity(0.3),
                                              ],
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(1.3.h),
                                            border: Border.all(
                                              color: Colors.white60
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                1.h, 2.h, 0, 0),
                                            child: Text(
                                              'Nicholas Dahlia',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 1.6.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(20.5.h, 2.h, 0, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                      BorderRadius.circular(1.2.h),
                                    ),
                                    height: 16.h,
                                    width: 22.h,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/how-to-grow-dahlias-pv-Nicholas (1).jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(1.h, 8.h, 23.h, 0),
                                  child: Text(
                                    'With its vibrant 6-inch-wide melon-orange flowers, ‘Nicholas’ dahlia’s versatile flower color looks beautiful in any autumn color palette,',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 1.2.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: 19.h,
                            width: 55.h,
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 0.h),
                                  child: Center(
                                    child: ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 0.6.h, sigmaY: 0.6.h),
                                        child: Container(
                                          height: 19.2.h,
                                          width: 44.h,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Colors.white60,
                                                Colors.grey.withOpacity(0.3),
                                              ],
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(1.3.h),
                                            border: Border.all(
                                              color: Colors.white60
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                1.h, 2.h, 0, 0),
                                            child: Text(
                                              'Indoor Plants',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 1.6.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(20.5.h, 2.h, 0, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                      BorderRadius.circular(1.2.h),
                                    ),
                                    height: 16.h,
                                    width: 22.h,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/ADAM+ROBINSON+DESIGN+Plant+of+The+Month+48 (1).jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(1.h, 8.h, 23.h, 0),
                                  child: Text(
                                    'For the plant lover, in the Winter months when it’s chilly outside there is no reason not to have plants inside.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 1.2.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: 19.h,
                            width: 55.h,
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 0.h),
                                  child: Center(
                                    child: ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 0.6.h, sigmaY: 0.6.h),
                                        child: Container(
                                          height: 19.2.h,
                                          width: 44.h,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Colors.white60,
                                                Colors.grey.withOpacity(0.3),
                                              ],
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(1.3.h),
                                            border: Border.all(
                                              color: Colors.white60
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                1.h, 2.h, 0, 0),
                                            child: Text(
                                              'Purple lavender',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 1.6.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(20.5.h, 2.h, 0, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                      BorderRadius.circular(1.2.h),
                                    ),
                                    height: 16.h,
                                    width: 22.h,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/Plants-to-ease-the-mind_lavender (1).jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(1.h, 8.h, 23.h, 0),
                                  child: Text(
                                    'Lavender is renowned for its richly fragrant flowers and aromatic foliage. This easy-to-grow shrub is best planted in spring,',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 1.2.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: 19.h,
                            width: 55.h,
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 0.h),
                                  child: Center(
                                    child: ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 0.6.h, sigmaY: 0.6.h),
                                        child: Container(
                                          height: 19.2.h,
                                          width: 44.h,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Colors.white60,
                                                Colors.grey.withOpacity(0.3),
                                              ],
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(1.3.h),
                                            border: Border.all(
                                              color: Colors.white60
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                1.h, 2.h, 0, 0),
                                            child: Text(
                                              'Rosemary',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 1.6.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(20.5.h, 2.h, 0, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                      BorderRadius.circular(1.2.h),
                                    ),
                                    height: 16.h,
                                    width: 22.h,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/rosemary-herb-flowering (1).jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(1.h, 8.h, 23.h, 0),
                                  child: Text(
                                    'Popularly known for its use in cooking, rosemary is a perennial herb from the mint family. It has also been used in traditional medicine for centuries.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 1.2.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: 19.h,
                            width: 55.h,
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 0.h),
                                  child: Center(
                                    child: ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 0.6.h, sigmaY: 0.6.h),
                                        child: Container(
                                          height: 19.2.h,
                                          width: 44.h,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Colors.white60,
                                                Colors.grey.withOpacity(0.3),
                                              ],
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(1.3.h),
                                            border: Border.all(
                                              color: Colors.white60
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                1.h, 2.h, 0, 0),
                                            child: Text(
                                              'Gerbera daisy',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 1.6.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(20.5.h, 2.h, 0, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                      BorderRadius.circular(1.2.h),
                                    ),
                                    height: 16.h,
                                    width: 22.h,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/Plants-to-ease-the-mind_gerbera-daisy (1).jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(1.h, 8.h, 23.h, 0),
                                  child: Text(
                                    'The Gerbera daisy is very colourful and adds a dynamic element to any garden, regardless of its size. Gerberas have huge, daisy-like blooms on long stems.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 1.2.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 7.5.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: NavigationBar(
              backgroundColor: Colors.transparent,
              selectedIndex: _currentIndex,
              onDestinationSelected: _onItemTapped,
              destinations: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0.5.h, 2.h, 0.h, 0.h),
                  child: NavigationDestination(
                    icon: Image.asset('assets/images/Before_Home.png'),
                    label: '',
                    selectedIcon: Image.asset('assets/images/AfterHome.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.h),
                  child: NavigationDestination(
                    icon: Image.asset('assets/images/Before_Likes.png'),
                    label: '',
                    selectedIcon: Image.asset('assets/images/After_Likes.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.h),
                  child: NavigationDestination(
                    icon: Image.asset('assets/images/Before_Chat.png'),
                    label: '',
                    selectedIcon: Image.asset('assets/images/After_Chat.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.5.h),
                  child: NavigationDestination(
                    icon: Image.asset('assets/images/Before_Cart.png'),
                    label: '',
                    selectedIcon: Image.asset('assets/images/After_Cart.png'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}