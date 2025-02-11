import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import 'Screen/ChatBot/ChatBot Screen.dart';
import 'Screen/Levi Screen.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
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
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Background.png'),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                                          BorderRadius.circular(1.3.h)),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        1.h, 1.h, 0.1.h, 1.h),
                                    child: Icon(Icons.arrow_back_ios,
                                        size: 2.7.h, color: Color(0xFF113B27)),
                                  )),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(1.5.h, 2.5.h, 0.h, 0.h),
                            child: Center(
                              child: Text(
                                'Menu',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'zian',
                                  fontSize: 4.h,
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
                    )),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 5.h,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Feel free to contact us if you have any suggestions, complaints, or issues that need to be resolved.',
                    style: TextStyle(
                      fontSize: 1.8.h,
                      fontWeight: FontWeight.w500,
                      color: Colors.white54,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(3.h, 2.h, 3.h, 0),
                  child: Row(
                    children: [
                      Container(
                        height: 20.h,
                        width: 19.5.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3.h)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 2.3.h,
                            ),
                            Container(
                              width: 6.5.h,
                              height: 6.5.h,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(1.5.h)),
                              child: Center(
                                child: Icon(
                                  CupertinoIcons.phone,
                                  color: Colors.white,
                                  size: 4.h,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              'Call us',
                              style: TextStyle(
                                  fontSize: 2.8.h,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: 'zian'),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(3.h, 0, 2.h, 0),
                              child: Text(
                                'Our Team is online 24 \n                  hours',
                                style: TextStyle(
                                    fontSize: 1.8.h,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                    fontFamily: 'zian'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 20.h,
                        width: 19.5.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3.h)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 2.3.h,
                            ),
                            Container(
                              width: 6.5.h,
                              height: 6.5.h,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(1.5.h)),
                              child: Center(
                                child: Icon(
                                  Icons.email_outlined,
                                  color: Colors.white,
                                  size: 4.h,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              'Email us',
                              style: TextStyle(
                                  fontSize: 2.8.h,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: 'zian'),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(3.h, 0, 2.h, 0),
                              child: Text(
                                'Our Team is online 24 \n                  hours',
                                style: TextStyle(
                                    fontSize: 1.8.h,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                    fontFamily: 'zian'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.fromLTRB(3.h, 0.h, 3.h, 0),
                  child:  const Text(
                    'Connect with us on social media',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(3.h, 2.h, 3.h, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _SocialMediaLink(
                            icon: FontAwesomeIcons.instagram,
                            platform: 'Instagram',
                            followers: '4.6K Followers',
                            posts: '118 Posts',
                          ),
                          _SocialMediaLink(
                            icon: FontAwesomeIcons.telegram,
                            platform: 'Telegram',
                            followers: '1.3K Followers',
                            posts: '85 Posts',
                          ),
                          _SocialMediaLink(
                            icon: FontAwesomeIcons.facebook,
                            platform: 'Facebook',
                            followers: '3.8K Followers',
                            posts: '136 Posts',
                          ),
                          _SocialMediaLink(
                            icon: FontAwesomeIcons.whatsapp,
                            platform: 'WhatsApp',
                            followers: '4.6K Followers',
                            posts: '118 Posts',
                          ),
                        ],
                      ),
                    ),
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
                ))
        );
      },
    );
  }
}


class _SocialMediaLink extends StatelessWidget {
  final IconData icon;
  final String platform;
  final String followers;
  final String? posts;

  const _SocialMediaLink({
    required this.icon,
    required this.platform,
    required this.followers,
    this.posts,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 6.5.h,
                  height: 6.5.h,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(1.5.h)),
                  child: Center(
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 4.h,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(platform,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(followers, style: const TextStyle(color: Colors.grey)),
                    if (posts != null)
                      Text(posts!, style: const TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const Icon(Icons.file_upload_outlined, size: 24),
          ],
        ),
      ),
    );
  }
}